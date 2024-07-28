# https://www.hackerrank.com/challenges/collections-counter/problem

from collections import Counter

# X = int(input()) => we don't need this input
_ = input()

shoe_sizes = list(map(int, input().split()))

N = int(input())

customers = [tuple(map(int, input().split())) for _ in range(N)]

shoe_sizes_count = Counter(shoe_sizes)

total = 0

for shoe_size, money in customers:
    if shoe_sizes_count[shoe_size] > 0:
        shoe_sizes_count[shoe_size] -= 1
        total += money

print(total)
