SELECT * FROM Country;

SELECT Name, MIN(LifeExpectancy) FROM Country GROUP BY Name;

SELECT Name, MIN(LifeExpectancy) FROM Country GROUP BY Name ORDER BY Name ASC;

SELECT MAX(LifeExpectancy), Name, Region FROM Country WHERE Population > 1000000  AND Continent = 'North America' GROUP BY Region,Name ORDER BY Name ASC;

/*Sums total population*/
SELECT SUM(Population), Region FROM Country WHERE Continent = 'North America' GROUP BY Region;

/*Sums total rows with that description*/
SELECT COUNT(Population), Region FROM Country WHERE Continent = 'North America' GROUP BY Region;