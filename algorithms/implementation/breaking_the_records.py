# https://www.hackerrank.com/challenges/breaking-best-and-worst-records/problem

def breakingRecords(scores):
    min_score = max_score = scores[0]
    min_breaks = max_breaks = 0

    for score in scores[1:]:
        if score < min_score:
            min_score = score
            min_breaks += 1
        elif score > max_score:
            max_score = score
            max_breaks += 1
    
    return [max_breaks, min_breaks]
