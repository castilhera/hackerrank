-- https://www.hackerrank.com/challenges/15-days-of-learning-sql/problem

WITH submissions_cte AS
(
    SELECT submission_date
         , hacker_id
         , DENSE_RANK() OVER (PARTITION BY hacker_id ORDER BY submission_date) AS [rnk]
      FROM Submissions
)
SELECT DISTINCT
       au.submission_date
     , au.active_sub_cnt
     , tu.hacker_id
     , hk.name
  FROM
      (
        SELECT submission_date
             , COUNT(hacker_id) AS [active_sub_cnt]
          FROM
              (
                  SELECT DISTINCT
                         hacker_id
                       , submission_date
                       , DENSE_RANK() OVER (PARTITION BY rnk ORDER BY submission_date) AS [rnk2]
                    FROM submissions_cte 
              ) tb
         WHERE rnk2 = 1
         GROUP
            BY submission_date
      ) au
 INNER
  JOIN 
      (
        SELECT V1.submission_date
             , V1.hacker_id
             , MAX(V1.top_submissions_by_date) AS [top_submissions_by_date]
             , DENSE_RANK() OVER (PARTITION BY V1.submission_date ORDER BY MAX(V1.top_submissions_by_date) DESC
             , V1.hacker_id ASC) AS [user_rnk]
          FROM 
              (
                SELECT submission_date
                     , hacker_id
                     , COUNT(rnk) AS [top_submissions_by_date]
                  FROM submissions_cte
                 GROUP
                    BY submission_date, hacker_id
              ) AS V1
          GROUP
             BY submission_date
              , hacker_id
      ) tu
    ON tu.submission_date = au.submission_date
 INNER
  JOIN Hackers [hk]
   ON hk.hacker_id = tu.hacker_id
WHERE tu.user_rnk = 1;
