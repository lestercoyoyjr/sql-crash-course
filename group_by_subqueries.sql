SELECT * FROM CountryLanguage;

SELECT Language,MAX(percentage)
FROM CountryLanguage
WHERE IsOfficial = 'T'
GROUP BY Language;

SELECT Code, Name FROM Country;

-- SUM of every amount per day
SELECT SUM(amount) AS "Revenue per Day", (SELECT DATE(transaction_date) FROM test_transactions LIMIT 1) AS Date
FROM test_transactions
GROUP BY Date;

SELECT SUM(amount), customer_id
FROM test_transactions
GROUP BY customer_id;

SELECT AVG(amount), customer_id
FROM test_transactions
GROUP BY customer_id;

SELECT MIN(amount), customer_id
FROM test_transactions
GROUP BY customer_id;

-- Would mean every time the customer has visited our establishment
SELECT COUNT(amount), customer_id
FROM test_transactions
GROUP BY customer_id;

-- 'HAVING' clause would be used when we would like a 'WHERE' after the 'GROUP BY'
SELECT COUNT(amount) AS Visits_per_Customer, customer_id
FROM test_transactions
GROUP BY customer_id
HAVING COUNT(amount) > 1;

-- We could also embrace it under a view
CREATE VIEW Visits_per_Customer AS
SELECT COUNT(amount) AS Visits_per_Customer, customer_id
FROM test_transactions
GROUP BY customer_id
HAVING COUNT(amount) > 1;

SELECT * FROM Visits_per_Customer;