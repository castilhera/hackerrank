# https://www.hackerrank.com/challenges/bon-appetit/problem

# using for -> range
def bonAppetit(bill, k, b):
    total = 0
    for i in range(len(bill)):
        if i != k:
            total += bill[i]
    total //= 2
    print("Bon Appetit" if total == b else b - total)


# using for -> enumerate
def bonAppetit(bill, k, b):
    total = 0
    for index, cost in enumerate(bill):
        if index != k:
            total += cost
    total //= 2
    print("Bon Appetit" if total == b else b - total)


# using reduce
from functools import reduce

def bonAppetit(bill, k, b):
    total = reduce(lambda acc, cost: acc + cost, bill) // 2 - bill[k] // 2
    print("Bon Appetit" if total == b else b - total)


# using list comprehension -> sum
def bonAppetit(bill, k, b):
    total = sum(cost for index, cost in enumerate(bill) if index != k) // 2
    print("Bon Appetit" if total == b else b - total)
