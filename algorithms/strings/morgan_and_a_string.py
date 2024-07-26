# https://www.hackerrank.com/challenges/morgan-and-a-string/problemk

def morganAndString(a, b):
    result = []

    a_len, b_len = len(a), len(b)
    a_idx, b_idx = 0, 0

    a += '~'
    b += '~'

    while a_idx < a_len or b_idx < b_len:
        if a[a_idx:] < b[b_idx:]:
            result.append(a[a_idx])
            a_idx += 1
        else:
            result.append(b[b_idx])
            b_idx += 1

    return ''.join(result)
