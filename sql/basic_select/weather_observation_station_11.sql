-- https://www.hackerrank.com/challenges/weather-observation-station-11/problem

SELECT distinct(CITY) 
  FROM STATION 
 WHERE CITY LIKE '[^AEIOU]%'
    OR CITY LIKE '%[^aeiou]';
