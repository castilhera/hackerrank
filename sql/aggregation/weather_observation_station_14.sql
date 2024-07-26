-- https://www.hackerrank.com/challenges/weather-observation-station-14/problem

SELECT CAST(MAX(LAT_N) AS DECIMAL(8, 4))
  FROM STATION
 WHERE LAT_N < 137.2345;
