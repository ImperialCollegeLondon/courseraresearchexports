import pandas as pd
import glob

gradebooks_input_file_location = r"C:\Users\rantonyv\Box\DLH Data\Coursera_gradebooks"
gradebooks_output_file_location = r"C:\Users\rantonyv\Box\DLH Data\Coursera_gradebooks\gradebooks"
combined_gradebooks_output_file_location = r"C:\Users\rantonyv\Box\DLH Data\Coursera_gradebooks\Combined_gradebooks"
duplicates_gradebooks_output_file_location = r"C:\Users\rantonyv\Box\DLH Data\Coursera_gradebooks\Duplicates_gradebooks"

dashboard_files = ['epi', 'fphp', 'gdm', 'ghi', 'hsd', 'idm']

combined_gradebook = pd.DataFrame(columns=['Anonymized Coursera ID', 'External Course ID', 'Term ID', 'External Student ID', 'First Name', 'Last Name', 'Email', 'Student ID'])

# for n in dashboard_files:
#     for file in glob.glob(gradebooks_output_file_location + "\\" + n + "-*.csv"):
#         #stats_list = []
#         file_df = pd.read_csv(file, converters={'Student ID': str,'Anonymized Coursera ID': str, 'External Course ID' : str, 'External Student ID': str})
#         file_df = file_df.iloc[:, :8]
#
#         #file_df = pd.concat(stats_list, axis=0, ignore_index=True)
#         #file_df2 = file_df.loc[(['Anonymized Coursera ID', 'External Course ID', 'Term ID', 'External Student ID', 'First Name', 'Last Name', 'Email', 'Student ID']) & (file_df.columns.filter(like='Graded Assignment Group Grade'))]
#         #file_df = file_df.iloc[:, :8]
#         # file_df = pd.concat([file_df,file_df2], )
#             # for col in file_df.columns:
#             #     if 'Graded Assignment Group Grade' in col:
#             #         print col
#             #         file_df = file_df[['Anonymized Coursera ID', 'External Course ID', 'Term ID', 'External Student ID', 'First Name', 'Last Name', 'Email', 'Student ID',col]]
#
#         combined_gradebook = combined_gradebook.append(file_df)
#         duplicate_gradebook_entries = combined_gradebook[combined_gradebook.duplicated()]
#     combined_gradebook = combined_gradebook.drop_duplicates(keep='first')
#     combined_gradebook.to_csv(combined_gradebooks_output_file_location + "\\" + str(n) + "_gmph.csv", index=False)
#     duplicate_gradebook_entries.to_csv(duplicates_gradebooks_output_file_location + "\\" + str(n) + "_gmph_duplicates.csv", index=False)

stats_list = []
for file in glob.glob(gradebooks_output_file_location + "\\" + 'stats' + "-*.csv"):
    file_df = pd.read_csv(file, converters={'Student ID': str, 'Anonymized Coursera ID': str,
                                            'External Course ID': str, 'External Student ID': str})
    stats_list.append(file_df)

file_df = pd.concat(stats_list, axis=0, ignore_index=False)

stats_columns = []
for col in file_df.columns:
    if 'Graded Assignment Group Grade' in col or 'Original Assessment Grade' in col:
        stats_columns.append(col)

columns = ['Anonymized Coursera ID', 'External Course ID', 'Term ID', 'External Student ID', 'First Name', 'Last Name', 'Email', 'Student ID']
columns = columns + stats_columns
combined_gradebook = pd.DataFrame(columns = columns)
file_df = file_df[file_df.columns & columns]

combined_gradebook = combined_gradebook.append(file_df)
duplicate_gradebook_entries = combined_gradebook[combined_gradebook.duplicated()]
combined_gradebook = combined_gradebook.drop_duplicates(keep='first')
combined_gradebook.to_csv(combined_gradebooks_output_file_location + "\\" + 'stats' + "_gmph.csv", index=False)
duplicate_gradebook_entries.to_csv(duplicates_gradebooks_output_file_location + "\\" + 'stats' + "_gmph_duplicates.csv", index=False)




