/*
	Stored Procedures
    ADVANTAGES:
    - Reduces network traffic
    - Increases performance
    - Secure, admin can grant permission to use
    DISADVANTAGES:
    - Increases memory usage of every connection
*/

DELIMITER $$ -- this is how you're going to end your procedure, using this symbol
CREATE PROCEDURE customer_transactions_name()
BEGIN
	SELECT DISTINCT first_name, last_name
	FROM test_transactions
	INNER JOIN Customers
	ON test_transactions.customer_id = customers.customer_id;
END $$
DELIMITER ; -- it returns to normal symbol

-- To execute stored procedure
CALL customer_transactions_name();

-- To drop procedure
DROP customer_transactions_name();

/* --------------------- USING A PARAMETER --------------------- */

DELIMITER $$
CREATE PROCEDURE find_customer_id(IN id INT)
BEGIN
	SELECT * FROM Customers
    WHERE Customer_id = id;
END $$
DELIMITER ;

CALL find_customer_id(2);


/* --------------------- USING N PARAMETERS --------------------- */

DELIMITER $$
CREATE PROCEDURE find_customer_name(IN f_name VARCHAR(50), 
									IN l_name VARCHAR(50))
BEGIN
	SELECT * FROM Customers
    WHERE first_name = f_name AND last_name = l_name;
END $$
DELIMITER ;

CALL find_customer_name("Larry", "Lobster");