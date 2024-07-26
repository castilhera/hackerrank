-- https://www.hackerrank.com/challenges/weather-observation-station-18/problem

SELECT CAST(ABS(MAX(LAT_N) - MIN(LAT_N)) + ABS(MAX(LONG_W) - MIN(LONG_W)) AS DECIMAL(18,4))
  FROM STATION;
