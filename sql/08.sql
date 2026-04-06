-- Get the easternnmost occurrence from the occurrences table (ST_X) using an SQL query

SELECT gbifID, species, ST_X(geom) AS longitude
FROM occurrences
ORDER BY longitude DESC
LIMIT 1;

-- Write down the gbifID of this occurrence below:
-- 3643211255
