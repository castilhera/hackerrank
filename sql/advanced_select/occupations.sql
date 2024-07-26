-- https://www.hackerrank.com/challenges/occupations/problem

SELECT [Doctor]
     , [Professor]
     , [Singer]
     , [Actor]
  FROM
      (
       SELECT Occupation
            , Name
            , ROW_NUMBER() OVER (PARTITION BY Occupation ORDER BY Name) AS RNK
         FROM OCCUPATIONS
      ) AS SRC
 PIVOT
     (
      MAX(Name)
      FOR Occupation IN ([Doctor], [Professor], [Singer], [Actor])
     ) AS PVT
 ORDER
    BY RNK
     , [Doctor]
     , [Professor]
     , [Singer]
     , [Actor];
