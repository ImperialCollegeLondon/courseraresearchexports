import pandas as pd
import os
import datetime
import shutil
from datetime import date
from datetime import timedelta
import dateutil.parser
import glob

# define where gradebook files are being picked up from and filtered 3 year cohort is being outputted
gradebooks_input_file_location = r"C:\Users\rantonyv\Box\DLH Data\Coursera_gradebooks"
gradebooks_output_file_location = r"C:\Users\rantonyv\Box\DLH Data\Coursera_gradebooks\gradebooks"
combined_gradebooks_output_file_location = r"C:\Users\rantonyv\Box\DLH Data\Coursera_gradebooks\Combined_gradebooks"
duplicates_gradebooks_output_file_location = r"C:\Users\rantonyv\Box\DLH Data\Coursera_gradebooks\Duplicates_gradebooks"

# read gradebooks
# assign academic_start_date
# move files from the last 3 years for courses files including EPI, FPHP, GDM, GHI, HSD, IDM, STATS
dashboard_files = ('epi', 'fphp', 'stats', 'gdm', 'ghi', 'hsd', 'idm', 'phi', 'hp', 'he', 'ghcg', 'dh', 'lcph', 'quality-improvement-in-healthcare', 'rp1', 'rp2', 'rp3', 'research-portfolio-4')

# Check all files by Tern_ID
# if term_id is within last 3 years, pull file across
# combine all files for dashboard_files - strip out any assessment data
# check for duplicates as part of testing - print out list of these

# identify academic year of today's date
# if date.today is > the first day of the last week of Sept, then AY of date.today = year.date.today
# search file list for files where Term ID = today's date AY, today's date AY -1, today's date AY -2
# for any files that have the same Term ID, concatenate rows A - H (all student PII) and if necessary, remove other columns

def AY_start_date(a):
    year_of_date = a.year
    Sept_30_year = datetime.datetime(year_of_date, 9, 30)
    Sept_30_year = datetime.date(Sept_30_year.year, Sept_30_year.month, Sept_30_year.day)
    academic_year_start_date = Sept_30_year - timedelta(days=Sept_30_year.weekday())  # timedelta & weekday

    if a > academic_year_start_date:
        AY = a.year
    else:
        AY = a.year - 1

    AY_list = [AY, AY - 1, AY - 2]
    return [academic_year_start_date, AY, AY_list]


a = date.today()
today_academic_year_start_date = AY_start_date(a)[0]
today_AY_list = AY_start_date(a)[2]

for file in os.listdir(gradebooks_input_file_location):
    if file.startswith((dashboard_files)):
        df = pd.read_csv(gradebooks_input_file_location + '\\' + file)
        # if Term ID column empty, fill cell with nearest timestamp value in row
        # find nearest column with a datetime format
        # Apply function AY_start_date to retrieve academic year of the nearest date found
        # Reformat to fit format of other Term IDs
        # once first cell filled, assign all cells in column with that Term ID year
        if df['Term ID'].nunique() == 0:
            for col in df.columns:
                if 'Time (UTC)' in col:
                    df['Term ID'][0] = df[col][0]
                    break
            df['Term ID'][0] = dateutil.parser.parse(df['Term ID'][0]).date()
            df['Term ID'][0] = AY_start_date(df['Term ID'][0])[1]
            df['Term ID'][0] = 'GMPH' + str(df['Term ID'][0]) + '10'
            df['Term ID'] = df['Term ID'][0]
        # fill cells with blanks with nearest Term ID value
        df['Term ID'].ffill(inplace=True)
        df['Term ID year/term'] = df['Term ID'].str[-6:]
        df['Term ID year'] = df['Term ID year/term'].str[:4]
        # Where the first cell is empty, fill cells with blanks with mode value
        df['Term ID year'].fillna(df['Term ID year'].mode()[0], inplace=True)
        df['Term ID year'] = df['Term ID year'].astype(int)
        for AY in today_AY_list:
            if AY in df['Term ID year']:
                break
            shutil.copyfile(gradebooks_input_file_location + '\\' + file, gradebooks_output_file_location + '\\' + file)


# if file starts with str, extract first 8 columns. combine into one file titled str
combined_gradebook = pd.DataFrame(columns=['Anonymized Coursera ID', 'External Course ID', 'Term ID', 'External Student ID', 'First Name', 'Last Name', 'Email', 'Student ID'])

for n in dashboard_files:
    for file in glob.glob(gradebooks_output_file_location + "\\" + n + "-*.csv"):
        if n != 'stats':
            file_df = pd.read_csv(file, converters={'Student ID': str,'Anonymized Coursera ID': str, 'External Course ID' : str, 'External Student ID': str})
            file_df = file_df.iloc[:, :8]
        else:
            break
        combined_gradebook = combined_gradebook.append(file_df)
        duplicate_gradebook_entries = combined_gradebook[combined_gradebook.duplicated()]
    combined_gradebook = combined_gradebook.drop_duplicates(keep='first')
    combined_gradebook.to_csv(combined_gradebooks_output_file_location + "\\" + str(n) + "_gmph.csv", index=False)
    duplicate_gradebook_entries.to_csv(duplicates_gradebooks_output_file_location + "\\" + str(n) + "_gmph_duplicates.csv", index=False)


# stats file requires extra columns, therefore is written as separate for loop
stats_list = []
for file in glob.glob(gradebooks_output_file_location + "\\" + 'stats' + "-*.csv"):
    file_df = pd.read_csv(file, converters={'Student ID': str, 'Anonymized Coursera ID': str,
                                            'External Course ID': str, 'External Student ID': str})
    stats_list.append(file_df)

file_df = pd.concat(stats_list, axis=0, ignore_index=False)
stats_columns = []
for col in file_df.columns:
    if 'Graded Assignment Group Grade' in col:
        stats_columns.append(col)

columns = ['Anonymized Coursera ID', 'External Course ID', 'Term ID', 'External Student ID', 'First Name', 'Last Name', 'Email', 'Student ID']
columns = columns + stats_columns
combined_gradebook = pd.DataFrame(columns = columns)
file_df = file_df[file_df.columns & columns]

combined_gradebook = combined_gradebook.append(file_df)
duplicate_gradebook_entries = combined_gradebook[combined_gradebook.duplicated(subset='Student ID')]
#combined_gradebook.sort_values['Anonymized Coursera ID']

combined_gradebook = combined_gradebook.drop_duplicates(subset=['Anonymized Coursera ID','Email', 'Student ID'], keep ='first')
#combined_gradebook = combined_gradebook.drop_duplicates(keep='first')
combined_gradebook.to_csv(combined_gradebooks_output_file_location + "\\" + 'stats' + "_gmph.csv", index=False)
duplicate_gradebook_entries.to_csv(duplicates_gradebooks_output_file_location + "\\" + 'stats' + "_gmph_duplicates.csv", index=False)