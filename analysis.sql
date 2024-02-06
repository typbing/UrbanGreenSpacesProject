CREATE EXTENSION postgis;

CREATE TABLE green_spaces (
	id SERIAL PRIMARY KEY,
	name VARCHAR(255),
	location GEOMETRY(Point, 4326),
	area_sq_m NUMERIC
);




INSERT INTO green_spaces (name, location, area_sq_m)
SELECT	name, ST_Transform(ST_Centroid(way), 4326) as locn, ST_Area(way)
FROM	planet_osm_polygon
WHERE	leisure	= 'park';



SELECT COUNT(*) AS total_parks FROM green_spaces;
SELECT SUM(area_sq_m) AS total_area FROM green_spaces;
SELECT AVG(area_sq_m) AS average_area FROM green_spaces;

SELECT SUM(ST_Area(way)) as total_green_space_area
FROM planet_osm_polygon
WHERE leisure = 'park';



SELECT name, ST_Area(way) as area
FROM planet_osm_polygon
WHERE leisure = 'park'
ORDER BY area DESC
LIMIT 5;
