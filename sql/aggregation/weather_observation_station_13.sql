-- https://www.hackerrank.com/challenges/weather-observation-station-13/problem

SELECT CAST(SUM(LAT_N) AS DECIMAL(12, 4))
  FROM STATION
 WHERE LAT_N BETWEEN 38.7880 AND 137.2345
 