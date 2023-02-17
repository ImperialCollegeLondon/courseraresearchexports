import datetime
from datetime import date
from datetime import timedelta

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
    return [academic_year_start_date, AY_list]


a = date.today()
print AY_start_date(a)

today_AY_list = AY_start_date(a)[1]
today_academic_year_start_date = AY_start_date(a)[0]
print today_academic_year_start_date


