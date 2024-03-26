SELECT * FROM Country;

SELECT * FROM Country WHERE Continent = 'North America' AND SurfaceArea > 1000.0;

SELECT * FROM Country WHERE Continent = 'North America' OR LifeExpectancy >= 70;

SELECT * FROM Country WHERE Continent = 'North America' OR NOT LifeExpectancy >= 70;