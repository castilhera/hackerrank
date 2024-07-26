-- https://www.hackerrank.com/challenges/print-prime-numbers/problem

WITH
    numbers AS
    (
        SELECT 2 as n
        UNION ALL
        SELECT n + 1
          FROM numbers
         WHERE n < 1000
    ), 
    primes AS
    (
        SELECT n
          FROM numbers nums1
         WHERE NOT EXISTS
                (
                    SELECT 1
                      FROM numbers nums2
                     WHERE nums2.n < nums1.n
                       AND nums1.n % nums2.n = 0
                )
    )
SELECT STRING_AGG(n, '&')
  FROM primes
OPTION (MAXRECURSION 1000);
