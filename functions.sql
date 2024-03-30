/*
	FUNCTIONS
*/

SELECT * FROM Customers;

SELECT COUNT(amount) AS "today's transactions" FROM test_transactions;

SELECT MAX(amount) AS maximum FROM test_transactions;

SELECT MIN(amount) AS minimum FROM test_transactions;

SELECT AVG(amount) AS average FROM test_transactions;

SELECT SUM(amount) AS average FROM test_transactions;

SELECT CONCAT(first_name, " ", last_name) AS full_name FROM Customers;