-- https://www.hackerrank.com/challenges/the-blunder/problem

SELECT CAST(CEILING(AVG(CAST(Salary AS FLOAT)) - AVG(CAST(REPLACE(Salary, '0', '') AS FLOAT))) AS INT)
  FROM EMPLOYEES;
