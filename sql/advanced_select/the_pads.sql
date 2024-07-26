-- https://www.hackerrank.com/challenges/the-pads/problem

SELECT CONCAT(name, '(', LEFT(occupation, 1), ')')
  FROM OCCUPATIONS
 ORDER
    BY 1;

SELECT CONCAT('There are a total of '
            , COUNT(OCCUPATION)
            , ' '
            , LOWER(OCCUPATION)
            , 's.')
  FROM OCCUPATIONS
 GROUP
    BY OCCUPATION
 ORDER
    BY 1;
