-- https://www.hackerrank.com/challenges/symmetric-pairs/problem

WITH FunctionsIndexed AS
(
    SELECT X
         , Y
         , ROW_NUMBER() OVER (ORDER BY (SELECT 1)) AS [ID]
      FROM Functions
)

SELECT DISTINCT
       A.X
     , A.Y
  FROM FunctionsIndexed A
 INNER
  JOIN FunctionsIndexed B
    ON A.X = B.Y
   AND A.Y = B.X
 WHERE A.ID <> B.ID
   AND A.X <= A.Y
 ORDER
    BY A.X;
