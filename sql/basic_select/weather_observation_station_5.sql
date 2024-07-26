-- https://www.hackerrank.com/challenges/weather-observation-station-5/problem

SELECT TOP 1
       CITY
     , LEN(CITY)
  FROM STATION
 ORDER
    BY 2 DESC
     , 1 ASC;

SELECT TOP 1 
       CITY
     , LEN(CITY)
  FROM STATION
 ORDER
    BY 2 ASC
     , 1 ASC;
