# https://www.hackerrank.com/challenges/birthday-cake-candles/problem

def birthdayCakeCandles(candles):
    """
    using python functions to solve
    max => to get the tallest candle
    count => to get the number of tallest candles
    """
    return candles.count(max(candles))


def birthdayCakeCandles(candles):
    """
    reverse sort the list to get the tallest candle first
    count => to keep track of the number of tallest candles
    break => to stop counting when a smaller candle is encountered
    """
    candles.sort(reverse=True)
    tallest = candles[0]
    count = 1

    for candle in candles[1:]:
        if candle == tallest:
            count += 1
        else:
            break

    return count


def birthdayCakeCandles(candles):
    """
    simple for loop to solve
    tallest => to keep track of the tallest candle
    count => to keep track of the number of tallest candles
    """
    tallest, count = 0, 0

    for candle in candles:
        if candle > tallest:
            tallest = candle
            count = 1
        elif candle == tallest:
            count += 1
    return count
