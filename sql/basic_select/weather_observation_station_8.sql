-- https://www.hackerrank.com/challenges/weather-observation-station-8/problem

SELECT distinct(CITY)
  FROM STATION
 WHERE CITY LIKE '[AEIOU]%[aeiou]';
