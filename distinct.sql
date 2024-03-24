/*
Distinct
*/

SELECT * FROM customer;

SELECT DISTINCT Country FROM Customer;

SELECT count(Country) FROM Customer; /*Misrepresentation*/

SELECT count(DISTINCT Country) FROM Customer;