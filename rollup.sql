-- ROLLUP, extension of the GROUP BY clause
-- produces another row and shows the GRAND TOTAL (super-aggregate value)

SELECT * FROM test_transactions;

SELECT DATE(transaction_date) AS Date,SUM(amount)
FROM test_transactions
GROUP BY Date;

SELECT SUM(amount) AS "Revenue per Day", (SELECT DATE(transaction_date) FROM test_transactions LIMIT 1) AS Date
FROM test_transactions
GROUP BY Date;

SHOW INDEXES FROM test_transactions;

CREATE INDEX transaction_date_idx ON Test_transactions(transaction_date);

-- With ROLLUP
SELECT DATE(transaction_date) AS Date,SUM(amount)
FROM test_transactions
GROUP BY Date WITH ROLLUP;

SELECT transaction_date AS Date,SUM(amount)
FROM test_transactions
GROUP BY Date WITH ROLLUP;

-- Transactions' amount
SELECT transaction_date AS Date, COUNT(transaction_id)
FROM test_transactions
GROUP BY Date WITH ROLLUP;

-- # of orders per customer
SELECT customer_id AS Customer, COUNT(transaction_id) AS "# of orders"
FROM test_transactions
GROUP BY Customer_id WITH ROLLUP;

SELECT * FROM Country;

SELECT Name,SUM(SurfaceArea) AS "Surface Area"
FROM Country
WHERE Continent = 'North America'
GROUP BY Name WITH ROLLUP;