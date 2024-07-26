-- https://www.hackerrank.com/challenges/weather-observation-station-7/problem

SELECT distinct(CITY)
  FROM STATION
 WHERE CITY LIKE '%[aeiou]';
