-- https://www.hackerrank.com/challenges/contest-leaderboard/problem

SELECT [hacker_id]
     , [name]
     , SUM([challenge_max_score]) AS [total_score]
  FROM
      (
        SELECT H.[hacker_id]
             , H.[name]
             , S.[challenge_id]
             , MAX(S.score) AS [challenge_max_score]
          FROM Hackers H
         INNER
          JOIN Submissions S
            ON S.hacker_id = H.hacker_id
         GROUP
            BY H.[hacker_id], H.[name], S.[challenge_id]
      ) TB
 GROUP
    BY [hacker_id], [name]
HAVING SUM([challenge_max_score]) > 0
 ORDER
    BY [total_score] DESC
     , [hacker_id] ASC;
