-- It only works if we have the same amount of columns, so we must select columns with it

SELECT Code, Name FROM Country
UNION
SELECT CountryCode, Language FROM CountryLanguage WHERE CountryLanguage.IsOfficial = 'T';

-- UNION ALL doesn't include duplicates
SELECT Code, Name FROM Country
UNION ALL
SELECT CountryCode, Language FROM CountryLanguage;