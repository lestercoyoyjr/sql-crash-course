SELECT * FROM City;

SELECT * FROM Country;

SELECT * FROM Country WHERE Continent = 'North America';

SELECT Name, Region, SurfaceArea FROM Country WHERE Continent = 'North America';

SELECT * FROM City WHERE ID BETWEEN 5 AND 20;

SELECT * FROM City WHERE ID > 6 AND ID <= 20;

SELECT Name, Region, SurfaceArea FROM Country WHERE Continent <> 'North America';