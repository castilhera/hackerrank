# https://www.hackerrank.com/challenges/apple-and-orange/problem

def countApplesAndOranges(s, t, a, b, apples, oranges):
    def _fruits_count(fruits, tree):
        return sum(1 for fruit in fruits if s <= tree + fruit <= t)

    print(_fruits_count(apples, a))
    print(_fruits_count(oranges, b))
