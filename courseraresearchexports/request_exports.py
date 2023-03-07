import os
import subprocess
import zipfile

# For requests per all Imperial coursera data
# sends request query to coursera API
# request_query = 'courseraresearchexports jobs request tables --partner_id 434  --purpose "testing data export"'

with open('request_id.txt') as f:
    lines = f.readlines()
result = lines[0]

# Extracts request id from result
request_id = (result[-12:])[:10]

# Running job with request_id
destination_folder = r"C:\Users\rantonyv\PycharmProjects\courseraresearchexports\data_export"
try:
    result = subprocess.check_output(["courseraresearchexports","jobs","download","--dest",destination_folder,request_id], shell=True)
    print result
except subprocess.CalledProcessError:
    print 'Job not achieved'

# unzip contents of download
dir_name = r'C:\Users\rantonyv\PycharmProjects\courseraresearchexports\data_export'
output_folder = r'C:\Users\rantonyv\PycharmProjects\courseraresearchexports\data_export'
extension = ".zip"

os.chdir(dir_name) # change directory from working dir to dir with files

for item in os.listdir(dir_name): # loop through items in dir
    if item.endswith(extension): # check for ".zip" extension
        file_name = os.path.abspath(item) # get full path of files
        zip_ref = zipfile.ZipFile(file_name) # create zipfile object
        zip_ref.extractall(output_folder) # extract file to dir
        zip_ref.close() # close file