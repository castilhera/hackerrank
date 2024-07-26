# https://www.hackerrank.com/challenges/time-conversion/problem

def timeConversion(s):
    hours = int(s[:2])
    am_pm = s[8:10]

    if hours == 12 and am_pm == 'AM':
        hours = 0
    elif hours != 12 and am_pm == 'PM':
        hours += 12

    return f"{hours:0>2}:{s[3:8]}"
