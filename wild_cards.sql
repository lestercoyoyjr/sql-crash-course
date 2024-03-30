-- wild card characters are '%' or '_'
-- used to substitue one or more characters in a string

SELECT * FROM employees;

SELECT * FROM country
WHERE Name LIKE "s%"; -- starts with

SELECT * FROM country
WHERE Population LIKE "60%"; -- For numbers it can be useful too

SELECT * FROM country
WHERE Name LIKE "%s" ORDER BY Name ASC; -- ends with

SELECT * FROM country
WHERE Name LIKE "se%";

-- '_' Represents one random letter
-- You can use more than one for more characters
SELECT * FROM country
WHERE Continent LIKE "_urope";

SELECT * FROM country
WHERE Region LIKE "_outhern Europe";

SELECT * FROM country
WHERE Region LIKE "_______ Europe";

-- Combine '_' and '%'
SELECT * FROM Country
WHERE Name LIKE "_e%" ORDER BY Name ASC;