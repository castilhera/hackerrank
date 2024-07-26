-- https://www.hackerrank.com/challenges/binary-search-tree-1/problem

SELECT
       N
     , CASE
           WHEN P IS NULL
               THEN 'Root'
           WHEN NOT EXISTS (SELECT 1 FROM BST BP WHERE BP.P = BN.N)
               THEN 'Leaf'
           ELSE 'Inner'
       END AS NODE_TYPE
  FROM BST BN
 ORDER
    BY N;
