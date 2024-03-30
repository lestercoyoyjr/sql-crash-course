/*
	Logical Operators are used to check more than one condition in one or more columns/tables
*/

SELECT * FROM Country;

SELECT * FROM Country WHERE IndepYear < 1800 AND GNP > 1000000;

SELECT * FROM Country WHERE IndepYear < 1800 OR GNP > 1000000;

SELECT * FROM Country WHERE Name = "Costa Rica";

SELECT * FROM Country WHERE NOT IndepYear > 1800 OR GNP > 1000000;

SELECT * FROM Country WHERE NOT IndepYear < 1800 AND NOT GNP < 1000000;

/*BETWEEN used when in the same column, not with different columns but it could work too*/
SELECT Name, Population FROM Country WHERE Population BETWEEN 8000000 and 20000000;

SELECT * FROM Country WHERE Region IN ("Caribbean", "Central America", "Central Africa") ORDER BY Name ASC;