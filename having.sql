SELECT * FROM Country;

SELECT MAX(LifeExpectancy), Name FROM Country WHERE Continent = 'North America' GROUP BY Name;

SELECT MAX(LifeExpectancy), Name FROM Country GROUP BY Name HAVING MAX(LifeExpectancy) > 75;

SELECT MAX(LifeExpectancy), Name FROM Country GROUP BY Name HAVING MAX(LifeExpectancy) > 80;