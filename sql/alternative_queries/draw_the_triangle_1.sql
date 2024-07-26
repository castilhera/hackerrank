-- https://www.hackerrank.com/challenges/draw-the-triangle-1/problem

WITH pattern_drawn AS
(
    SELECT 1 AS LVL, cast('*' as varchar(40)) AS pattern
    UNION ALL
    SELECT LVL + 1, cast(pattern + ' *' as varchar(40))
      FROM pattern_drawn
     WHERE LVL < 20
)
SELECT pattern
  FROM pattern_drawn
 ORDER
    BY 1 DESC;
