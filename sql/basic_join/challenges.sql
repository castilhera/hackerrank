-- https://www.hackerrank.com/challenges/challenges/problem

WITH HackerChallenges AS (
    SELECT
           h.[hacker_id]
         , h.[name]
         , COUNT(1) AS [total_challenges]
      FROM Hackers h
     INNER
      JOIN Challenges c
        ON c.[hacker_id] = h.[hacker_id]
     GROUP
        BY h.[hacker_id], h.[name]
)

SELECT
       hc.[hacker_id]
     , hc.[name]
     , hc.[total_challenges]
  FROM HackerChallenges hc
 CROSS
  JOIN
      (
        SELECT MAX([total_challenges]) AS [max_challenges]
          FROM HackerChallenges
      ) AS challenges
 WHERE hc.[total_challenges] = [challenges].[max_challenges]
    OR (SELECT COUNT(1)
          FROM HackerChallenges hcx
         WHERE hcx.[total_challenges] = hc.[total_challenges]) = 1
 ORDER
    BY hc.[total_challenges] DESC
     , hc.[hacker_id] ASC;
