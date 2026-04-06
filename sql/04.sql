-- Use an SQL query to obtain the centroid coordinates (ST_Centroid) of the largest country from the previous query (03).

SELECT name, ST_AsText(ST_Centroid(geom)) AS centroid
FROM countries
WHERE name = 'Russia';

-- Write down the coordinates obtained below
-- POINT(96.69376066492919 61.98455531173935)