# owl-geodatabase-analysis

Spatial analysis of owl species occurrence data using PostGIS, exploring distribution patterns across countries, near cities, and along rivers.

## What I did

- Queried a PostGIS geodatabase containing global owl occurrence records from GBIF
- Used spatial SQL functions (ST_Distance, ST_DWithin, ST_Within, ST_Area, ST_Centroid, ST_AsText) to analyze species distribution
- Found all owl occurrences within 50 km of Istanbul and calculated their distance from the city center
- Analyzed owl habitat patterns along the Kızılırmak river (Turkey's longest river) to explore proximity to water sources
- Counted species occurrences within Turkey's borders to identify the most common owl species (Athene noctua / Little Owl)
- Combined point, line, and polygon geometries with aggregation queries

## Query highlights

- `09.sql` – Species occurrences near Istanbul using ST_DWithin and ST_Distance
- `10.sql` – Habitat analysis along the Kızılırmak river corridor
- `11.sql` – Country-level species count using ST_Within with GROUP BY aggregation

## Tools

PostgreSQL, PostGIS, spatial SQL

## Course

Geodatabases – B.Sc. Environmental Data Science, Czech University of Life Sciences Prague (2nd year)
