-- Design and write your own SQL query below that will use spatial functions in an meaningful way 
-- to filter occurrences from your REGION in combination with the 
-- polygon layer (countries) used. 
-- The proposed query must use at least two ST_ functions (not used in previous queries).
-- (!!!queries 09, 10, 11 must be original in meaning, not just complementary to each other!!!)

SELECT o.species, COUNT(*) AS total_occurrences,
       ST_Area(c.geom::geography)/1000000 AS turkey_area_km2
FROM occurrences o, countries c
WHERE c.name = 'Turkey'
AND ST_Within(o.geom, c.geom)
GROUP BY o.species, c.geom
ORDER BY total_occurrences DESC;

-- Explain here in the comments what the goal of your proposed SQL query is.
-- This query counts owl occurrences per species within Turkey's borders and shows the country's area. It reveals which owl species are most common in Turkey, with Athene noctua (Little Owl) being the most observed.