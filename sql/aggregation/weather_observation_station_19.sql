-- https://www.hackerrank.com/challenges/weather-observation-station-19/problem

SELECT CAST(SQRT(
                POWER(MAX(LAT_N) - MIN(LAT_N), 2) + 
                POWER(MAX(LONG_W) - MIN(LONG_W), 2)
            )
       AS DECIMAL(18, 4))
  FROM STATION;
