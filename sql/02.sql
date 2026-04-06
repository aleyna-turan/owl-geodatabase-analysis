-- Write an SQL query that will return the coordinates in WKT format from the occurrences table

SELECT gbifID, species, ST_AsText(geom) AS wkt_coordinates
FROM occurrences;