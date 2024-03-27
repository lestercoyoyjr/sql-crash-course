/*
	JOIN Statements:
    INNER JOIN
    LEFT JOIN
    RIGHT JOIN
    OUTER/CROSS JOIN
*/

SELECT * FROM Country;

SELECT * FROM CountryLanguage;

SELECT * FROM Country
INNER JOIN CountryLanguage
ON Country.Code = CountryLanguage.CountryCode;

SELECT Code,Name,Continent FROM Country
INNER JOIN CountryLanguage
ON Country.Code = CountryLanguage.CountryCode AND CountryLanguage.IsOfficial = 'T';

SELECT Code,Name,Continent FROM Country
LEFT JOIN CountryLanguage
ON Country.Code = CountryLanguage.CountryCode AND CountryLanguage.IsOfficial = 'T';

SELECT * FROM Country
RIGHT JOIN CountryLanguage
ON Country.Code = CountryLanguage.CountryCode AND CountryLanguage.IsOfficial = 'T';

SELECT Code,Name,Continent FROM Country
RIGHT JOIN CountryLanguage
ON Country.Code = CountryLanguage.CountryCode AND CountryLanguage.IsOfficial = 'T';

SELECT * FROM Country
CROSS JOIN CountryLanguage WHERE CountryLanguage.IsOfficial = 'T' AND CountryLanguage.Percentage > 50.0;