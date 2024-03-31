SELECT * FROM CountryLanguage;

SELECT Language,MAX(percentage)
FROM CountryLanguage
GROUP BY Language;

SELECT Code, Name FROM Country;