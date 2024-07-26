-- https://www.hackerrank.com/challenges/weather-observation-station-20/problem

-- solution 2
SELECT TOP 1
       CAST(PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY LAT_N) OVER () AS DECIMAL(18,4))
  FROM STATION;

-- solution 1
SELECT
    CAST(
        CASE
            WHEN COUNT(*) % 2 = 1 THEN
                MAX(LAT_N)
            ELSE
                (MAX(LAT_N) + MIN(LAT_N)) / 2.0
        END
    AS DECIMAL(18,4))
  FROM
    (
        SELECT
               LAT_N
             , ROW_NUMBER() OVER (ORDER BY LAT_N) AS RowAsc
             , ROW_NUMBER() OVER (ORDER BY LAT_N DESC) AS RowDesc
          FROM STATION
    ) AS TB
 WHERE RowAsc IN (RowDesc, RowDesc + 1);
