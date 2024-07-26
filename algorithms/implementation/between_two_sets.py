# https://www.hackerrank.com/challenges/between-two-sets/problem

def getTotalX(a, b):
    result = 0
    for i in range(max(a), min(b) + 1):
        if all(i % x == 0 for x in a) and all(x % i == 0 for x in b):
            result += 1
    return result
