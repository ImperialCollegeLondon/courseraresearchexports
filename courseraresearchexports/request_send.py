from subprocess import check_output


# Aim: read output of request in order to get request_id
# Storing both outputs stderr and stdout and store in file test2.txt
request_output = check_output(["courseraresearchexports", "jobs", "request", "tables", "--partner_id", "434", "--purpose",
                     "\"testing data export\"", ">", "request_id.txt", "2>&1"], shell=True).decode()

