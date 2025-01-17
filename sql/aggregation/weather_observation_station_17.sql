-- https://www.hackerrank.com/challenges/weather-observation-station-17/problem

SELECT TOP 1
       CAST(LONG_W AS DECIMAL(18, 4))
  FROM STATION
 WHERE LAT_N > 38.7780
 ORDER
    BY LAT_N;
