This report presents a spatial analysis of urban green spaces within a selected city. Utilizing PostGIS and QGIS tools, we examine the distribution, size, offering insights into urban public usage patterns.  The importance of urban green spaces in terms of environmental benefits and public health is well documented. In Berlin, urban planning initiatives aim to ensure equitable access to these important resources. The goal of this project is to analyze the distribution of urban green spaces.



Methodology involved import OSM Data, osm2pgsql -H localhost -P 5433 -d urban_green_spaces -U postgres -W “/Users/binghui/Desktop/2024 SP/IDCE376 DATABASE/UrbanGreenSpacesProject/berlin.osm.pbf”. Querying OpenStreetMap's planet_osm_polygon table via PostGIS to extract data on urban green spaces. Besides, SELECT SUM(area_sq_m) AS total_area FROM green_spaces, thequery calculates the sum of the areas of all the parks, giving the total green space area. 

SQL Query Example 1: Total Area of Green Spaces: 

"The total area of green spaces in the city is approximately 11.5 square kilometers." 

SQL Query Example 2: Top 5 Largest Green Spaces: 

The query lists the top 5 largest green spaces by name and area,  

Volkspark Rehberge 1.76 sq km 

Schlosspark Charlottenburg 1.25 sq km 

Volkspark Humboldthain 0.68 sq km 

Park am Plötzensee 0.51 sq km 

Schillerpark 0.39 sq km 
