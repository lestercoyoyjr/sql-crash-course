/*\
	Order By
*/

SELECT * FROM Country;

SELECT * FROM Country ORDER BY Name;

SELECT * FROM Country ORDER BY SurfaceArea;

SELECT * FROM Country ORDER BY Name ASC;

SELECT * FROM Country WHERE Continent = 'North America' AND NOT LifeExpectancy >= 70 ORDER BY LifeExpectancy DESC;