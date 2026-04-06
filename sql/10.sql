-- Design and write your own SQL query below that will use spatial functions in an meaningful way 
-- to filter occurrences from your REGION in combination with the 
-- line layer (rivers) used. 
-- The proposed query must use at least two ST_ functions (not used in previous queries).
-- (!!!queries 09, 10, 11 must be original in meaning, not just complementary to each other!!!)

SELECT o.gbifID, o.species, r.name AS river_name,
       ST_Distance(o.geom::geography, r.geom::geography)/1000 AS distance_km
FROM occurrences o, rivers r
WHERE r.name = 'Kızılırmak'
AND ST_DWithin(o.geom::geography, r.geom::geography, 30000)
ORDER BY distance_km;

-- Explain here in the comments what the goal of your proposed SQL query is.
-- This query finds all owl occurrences within 30km of the Kızılırmak river (Turkey's longest river). This helps understand if owls prefer habitats near water sources for hunting.