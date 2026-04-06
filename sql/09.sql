-- Design and write your own SQL query below that will use spatial functions in an meaningful way 
-- to filter occurrences from your REGION in combination with the 
-- point layer (populated places) used. 
-- The proposed query must use at least one ST_ function (not used in previous queries).
-- (!!!queries 09, 10, 11 must be original in meaning, not just complementary to each other!!!)

SELECT o.gbifID, o.species, p.name AS city_name,
       ST_Distance(o.geom::geography, p.geom::geography)/1000 AS distance_km
FROM occurrences o, populated_places p
WHERE p.name = 'Istanbul'
AND ST_DWithin(o.geom::geography, p.geom::geography, 50000)
ORDER BY distance_km;

-- Explain here in the comments what the goal of your proposed SQL query is.
-- This query finds all owl occurrences within 50km of Istanbul and calculates their distance from the city 
-- center. This helps understand which owl species live near Turkey's largest urban area.