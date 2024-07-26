-- https://www.hackerrank.com/challenges/weather-observation-station-9/problem

SELECT distinct(CITY)
  FROM STATION
 WHERE CITY LIKE '[^AEIOU]%';
