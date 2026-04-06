-- Enter a simple SQL query below in which:
-- you select the columns: gbifID, species, countryCode, year
-- from the table occurrences 
-- and sort by year

SELECT gbifID, species, countryCode, year 
FROM occurrences 
ORDER BY year;