/*
	UNION and JOIN difference is UNION is used for vertical results while JOIN is for horizontal
*/

SELECT * FROM Country;

SELECT * FROM CountryLanguage;

SELECT Code FROM Country  UNION SELECT Language FROM CountryLanguage;