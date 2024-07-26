-- https://www.hackerrank.com/challenges/average-population-of-each-continent/problem

SELECT COUNTRY.CONTINENT
     , FLOOR(AVG(CITY.POPULATION))
  FROM CITY
 INNER
  JOIN COUNTRY
    ON COUNTRY.CODE = CITY.COUNTRYCODE
 GROUP
    BY COUNTRY.CONTINENT;
