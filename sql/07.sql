-- Get the southernnmost occurrence from the occurrences table (ST_Y) using an SQL query

SELECT gbifID, species, ST_Y(geom) AS latitude
FROM occurrences
ORDER BY latitude ASC
LIMIT 1;

-- Write down the gbifID of this occurrence below:
-- 3506859920
