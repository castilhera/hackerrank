-- https://www.hackerrank.com/challenges/asian-population/problem

SELECT SUM(CITY.POPULATION)
  FROM CITY
 INNER
  JOIN COUNTRY
    ON COUNTRY.CODE = CITY.COUNTRYCODE
   AND COUNTRY.CONTINENT = 'Asia';
