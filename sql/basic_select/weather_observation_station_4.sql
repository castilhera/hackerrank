-- https://www.hackerrank.com/challenges/weather-observation-station-4/problem

SELECT SUM(CNT) - COUNT(1) 
  FROM (
        SELECT COUNT(1) AS CNT
          FROM STATION
         GROUP
            BY CITY
       ) TB;
