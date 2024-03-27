/*\
	Order By
*/

SELECT * FROM Country;

SELECT * FROM Country ORDER BY Name;

SELECT * FROM Country ORDER BY SurfaceArea;

SELECT * FROM Country ORDER BY Name ASC;

SELECT * FROM Country WHERE Continent = 'North America' AND NOT LifeExpectancy >= 70 ORDER BY LifeExpectancy DESC;

SELECT Code,Name,Continent,Region,SurfaceArea FROM Country WHERE SurfaceArea > 1000000 ORDER BY SurfaceArea DESC;

SELECT Name, LifeExpectancy AS LE FROM Country WHERE LifeExpectancy IS NOT NULL ORDER BY LifeExpectancy ASC LIMIT 10;