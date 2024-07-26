-- https://www.hackerrank.com/challenges/african-cities/problem

SELECT CITY.NAME
  FROM CITY
 INNER
  JOIN COUNTRY
    ON COUNTRY.CODE = CITY.COUNTRYCODE
   AND COUNTRY.CONTINENT = 'Africa';
