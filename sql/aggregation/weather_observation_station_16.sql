-- https://www.hackerrank.com/challenges/weather-observation-station-16/problem

SELECT CAST(MIN(LAT_N) AS DECIMAL(8, 4))
  FROM STATION
 WHERE LAT_N > 38.7780;
