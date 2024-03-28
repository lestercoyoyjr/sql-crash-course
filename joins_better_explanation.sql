INSERT INTO Customers (first_name, last_name)
VALUES ("Poppy", "Puff");

SELECT * FROM Customers;

SELECT * FROM test_transactions;

/*Not all customers initiated a transaction, and not all transactions have a customer*/


/*INNER JOIN*/
SELECT * FROM test_transactions INNER JOIN Customers ON test_transactions.customer_id = Customers.customer_id;

SELECT transaction_id, amount, first_name, last_name FROM test_transactions INNER JOIN Customers ON test_transactions.customer_id = Customers.customer_id;

/*LEFT JOIN*/
SELECT * FROM test_transactions LEFT JOIN Customers ON test_transactions.customer_id = Customers.customer_id; /*Transactions result*/

/*RIGHT JOIN*/
SELECT * FROM test_transactions RIGHT JOIN Customers ON test_transactions.customer_id = Customers.customer_id; /*Customers result*/