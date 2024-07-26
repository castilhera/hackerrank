-- https://www.hackerrank.com/challenges/sql-projects/problem

WITH CTE_PROJECTS AS 
(
    SELECT START_DATE, END_DATE
      FROM PROJECTS
    
    UNION ALL
    
    SELECT PP.START_DATE, SP.END_DATE
      FROM PROJECTS AS PP
     INNER
      JOIN CTE_PROJECTS AS SP
        ON PP.END_DATE = SP.START_DATE
)

SELECT MIN_START_DATE
     , MAX_END_DATE
  FROM
    (
        SELECT MIN(START_DATE) AS [MIN_START_DATE]
             , MAX_END_DATE
             , DATEDIFF(day, MIN(START_DATE), MAX_END_DATE) AS [DAYS]
          FROM
            (
                SELECT START_DATE
                     , MAX(END_DATE) AS MAX_END_DATE
                  FROM CTE_PROJECTS
                 GROUP
                    BY START_DATE
            ) AS P
         GROUP
            BY MAX_END_DATE
    ) TB
 ORDER
    BY DAYS
     , MIN_START_DATE;
