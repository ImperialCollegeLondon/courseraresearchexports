import pandas as pd
import glob

gradebooks_input_file_location = r"C:\Users\rantonyv\Box\DLH Data\Coursera_gradebooks"
gradebooks_output_file_location = r"C:\Users\rantonyv\Box\DLH Data\Coursera_gradebooks\gradebooks"
combined_gradebooks_output_file_location = r"C:\Users\rantonyv\Box\DLH Data\Coursera_gradebooks\Combined_gradebooks"
duplicates_gradebooks_output_file_location = r"C:\Users\rantonyv\Box\DLH Data\Coursera_gradebooks\Duplicates_gradebooks"

dashboard_files = ['epi', 'fphp', 'gdm', 'ghi', 'hsd', 'idm', 'stats']

combined_gradebook = pd.DataFrame(columns=['Anonymized Coursera ID', 'External Course ID', 'Term ID', 'External Student ID', 'First Name', 'Last Name', 'Email', 'Student ID'])

for n in dashboard_files:
    for file in glob.glob(gradebooks_output_file_location + "\\" + n + "-*.csv"):
        file_df = pd.read_csv(file, converters={'Student ID': str,'Anonymized Coursera ID': str, 'External Course ID' : str, 'External Student ID': str})
        file_df = file_df.iloc[:, :8]

        combined_gradebook = combined_gradebook.append(file_df)
        duplicate_gradebook_entries = combined_gradebook[combined_gradebook.duplicated()]
    combined_gradebook = combined_gradebook.drop_duplicates(keep='first')
    combined_gradebook.to_csv(combined_gradebooks_output_file_location + "\\" + str(n) + "_gmph.csv", index=False)
    duplicate_gradebook_entries.to_csv(duplicates_gradebooks_output_file_location + "\\" + str(n) + "_gmph_duplicates.csv", index=False)



