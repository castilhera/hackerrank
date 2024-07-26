-- https://www.hackerrank.com/challenges/the-report/problem

SELECT CASE WHEN g.Grade < 8
                THEN NULL
            ELSE s.Name
       END as [Name]
     , g.Grade
     , s.Marks as [Mark]
  FROM Students s
  LEFT OUTER
  JOIN Grades g
    ON s.Marks BETWEEN g.Min_Mark and g.Max_Mark
 ORDER
    BY 2 DESC
     , 1 ASC;
