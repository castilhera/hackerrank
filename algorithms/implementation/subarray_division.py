# https://www.hackerrank.com/challenges/the-birthday-bar/problem

def birthday(s, d, m):
    count = 0
    for i in range(len(s)-m+1):
        segment_sum = sum(s[i:i+m])
        if segment_sum == d:
            count += 1
    return count
