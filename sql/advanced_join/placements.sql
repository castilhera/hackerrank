-- https://www.hackerrank.com/challenges/placements/problem

SELECT S.name
  FROM Students AS S
 INNER
  JOIN Packages as P
    ON P.id = S.id
 INNER
  JOIN Friends as F
    ON F.id = S.id
 INNER
  JOIN Packages as PF
    ON PF.id = F.Friend_id
 WHERE P.Salary < PF.Salary
 ORDER
    BY PF.Salary;
