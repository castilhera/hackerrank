-- https://www.hackerrank.com/challenges/full-score/problem

SELECT 
       CONCAT(h.hacker_id, '  ', h.name)
  FROM Hackers h
 INNER
  JOIN
      (
        SELECT
               s.hacker_id
             , COUNT(1) as [full_score_count]
          FROM Submissions s
         INNER
          JOIN Challenges c
            ON c.challenge_id = s.challenge_id
         INNER
          JOIN Difficulty d
            ON d.difficulty_level = c.difficulty_level
           AND d.score = s.score
         GROUP
            BY s.hacker_id
        HAVING COUNT(1) > 1
      ) tmp
    ON tmp.hacker_id = h.hacker_id
 ORDER
    BY tmp.[full_score_count] DESC
     , 1 ASC;
