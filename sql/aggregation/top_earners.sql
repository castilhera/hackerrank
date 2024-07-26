-- https://www.hackerrank.com/challenges/earnings-of-employees/problem

select top 1
       salary * months
     , count(1)
  from Employee
 group by salary * months
 order by 1 desc;
