import requests
from courseraoauth2client import oauth2

app = 'APP'
url = 'https://api.coursera.org/api/externalBasicProfiles.v1?q=me&fields=name'
auth = oauth2.build_oauth2(app=app).build_authorizer()
response = requests.get(url, auth=auth)
print response.json()