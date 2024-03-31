SELECT * FROM Country;

CREATE VIEW Surface_Area_per_Country AS
SELECT Code, Name, Continent, Region, SurfaceArea FROM Country;

SELECT * FROM surface_area_per_country;

RENAME TABLE Nort_america_population TO North_america_population;

ALTER VIEW North_america_population AS SELECT Continent, Region, SUM(Population) FROM Country WHERE Continent = "North America" AND Region = "North America";

SELECT * FROM north_america_population;