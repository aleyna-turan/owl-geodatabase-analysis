-- Write an SQL query to identify the country (polygon) with the largest area.

SELECT name, ST_Area(geom::geography) AS area_sqm
FROM countries
ORDER BY area_sqm DESC
LIMIT 1;

-- !!! Write the countryCode (resulting value) of this largest country in the comment below:
-- RU