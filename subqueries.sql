SELECT * FROM Country;

SELECT AVG(LifeExpectancy) FROM Country;

-- It will create another column
SELECT Code,Name, Continent, Region, LifeExpectancy, 
	   (SELECT AVG(LifeExpectancy) FROM Country) AS Average_LifeExpectancy
FROM Country;

-- Above the avg life expectancy
SELECT Code, Name, Continent, Region, LifeExpectancy 
FROM Country
WHERE LifeExpectancy  > (SELECT AVG(LifeExpectancy) FROM Country) ORDER BY LifeExpectancy DESC;

SELECT * FROM CountryLanguage;

SELECT DISTINCT Language
FROM CountryLanguage
WHERE IsOfficial != "F"; -- DISTINCT is just to now show repeated

-- Another Query
SELECT Code, Name 
FROM Country
WHERE Code IN
(SELECT CountryCode
FROM CountryLanguage)
AND
(SELECT IsOfficial FROM CountryLanguage WHERE IsOfficial != "F"); 

SELECT Language FROM CountryLanguage
WHERE IsOfficial != "F" AND CountryCode IN
(SELECT Code FROM Country);

/*
In this modified query, the ORDER BY Language ASC sorts the official languages alphabetically, 
and LIMIT 1 ensures that only one language is selected per country.
*/

SELECT 
    Code,
    Name,
    (SELECT Language 
     FROM CountryLanguage 
     WHERE Country.Code = CountryLanguage.CountryCode 
     AND IsOfficial = 'T' 
     ORDER BY Language ASC
     LIMIT 1) AS OfficialLanguage
FROM 
    Country;