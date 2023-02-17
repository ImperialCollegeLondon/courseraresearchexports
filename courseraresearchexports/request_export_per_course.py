import pandas as pd
import os
import subprocess

# If requests are per course_id, use this method - this method however is flawed in that the course_ids will need to be extracted first
# elsewhere, then read in, with multiple requests being sent.
# As there is a request per two hours limit, this is not feasible
# read dataframe to limit to course_ids GMPH specific
users_courses__degree_program_memberships = pd.read_csv(r"C:\Users\rantonyv\Documents\GMPH Coursera\imperial_1669376997496\users_courses__degree_program_memberships.csv")
users_courses__degree_program_memberships_GMPH = users_courses__degree_program_memberships.loc[users_courses__degree_program_memberships['degree_program_slug'] == 'global-mph-imperial']
course_ids_GMPH = users_courses__degree_program_memberships_GMPH[['course_id']]
#users_courses__degree_program_memberships_GMPH.to_csv("C:\\Users\\rantonyv\\Documents\\GMPH Coursera\\imperial_1669376997496_GMPH\\users_courses__degree_program_memberships_GMPH.csv", index = False)
#course_ids_GMPH.to_csv("C:\\Users\\rantonyv\\Documents\\GMPH Coursera\\imperial_1669376997496_GMPH\\course_ids_GMPH.csv", index = False)
course_ids_GMPH_list = course_ids_GMPH['course_id'].tolist()
list(map(int, course_ids_GMPH_list))

[int(x) for x in course_ids_GMPH_list]

print type(course_ids_GMPH_list)

input()
returned_output = []
for course_id in course_ids_GMPH_list:
    query = 'courseraresearchexports jobs request tables --course_id ' + course_id + ' --purpose "testing data export"'
    print query
    os.system(query)
    returned_output = subprocess.check_output(query)[course_id]
    print returned_output

