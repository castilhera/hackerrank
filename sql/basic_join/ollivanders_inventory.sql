-- https://www.hackerrank.com/challenges/harry-potter-and-wands/problem

SELECT [id]
     , [age]
     , [coins_needed]
     , [power]
  FROM
      (
        SELECT w.[id]
             , wp.[age]
             , w.[coins_needed]
             , w.[power]
             , ROW_NUMBER() OVER (PARTITION BY wp.[age], w.[power] ORDER BY w.[coins_needed]) AS RNK
          FROM Wands w
         INNER
          JOIN Wands_Property wp
            ON wp.code = w.code
           AND wp.is_evil = 0
      ) TB
 WHERE RNK = 1
 ORDER
    BY [power] DESC
     , [age] DESC;
