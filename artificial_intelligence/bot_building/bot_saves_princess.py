# https://www.hackerrank.com/challenges/saveprincess

def displayPathtoPrincess(n, grid):
    corners = ((0, 0), (0, n-1), (n-1, 0), (n-1, n-1))
    for x, y in corners:
        if grid[x][y] == 'p':
            princess = (x, y)
            break
    
    mid = n // 2
    bot = (mid, mid)

    dist_v = princess[0] - bot[0]
    dist_h = princess[1] - bot[1]

    if dist_v > 0:
        for _ in range(dist_v):
            print("DOWN")
    elif dist_v < 0:
        for _ in range(abs(dist_v)):
            print("UP")

    if dist_h > 0:
        for _ in range(dist_h):
            print("RIGHT")
    elif dist_h < 0:
        for _ in range(abs(dist_h)):
            print("LEFT")
