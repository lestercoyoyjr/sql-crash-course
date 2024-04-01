-- ON DELETE SET NULL = When a FK is deleted, replace FK with NULL
-- ON DELETE CASCADE = When a FK is deleted, delete row

SELECT * FROM test_transactions;

SELECT * FROM customers;

DELETE FROM Customers
WHERE customer_id = 3;

-- Specify to check referential constraints
-- (this is the default)
SET foreign_key_checks = 1;

-- If we would like to change it (Remember to set it to default value)
SET foreign_key_checks = 0;

-- To check the current FOREIGN KEY value
SELECT @@GLOBAL.foreign_key_checks, @@SESSION.foreign_key_checks;

INSERT INTO Customers
VALUES (3, "Bubble","Bass");

-- ON DELETE SET NULL
ALTER TABLE Test_transactions DROP FOREIGN KEY test_transactions_ibfk_3;

ALTER TABLE test_transactions
ADD CONSTRAINT fk_customer_id
FOREIGN KEY (customer_id) REFERENCES Customers(customer_id) 
ON DELETE SET NULL; -- If deleted from customers, the FK of that row will be null

DELETE FROM Customers
WHERE customer_id = 3;

SELECT *FROM test_transactions;
SELECT *FROM customers; -- it will only show "NULL" value in the row

-- ON DELETE CASCADE
ALTER TABLE Test_transactions DROP FOREIGN KEY fk_customer_id;

ALTER TABLE test_transactions
ADD CONSTRAINT fk_customer_id
FOREIGN KEY (customer_id) REFERENCES Customers(customer_id) 
ON DELETE CASCADE; -- If deleted from customers, the entire row will be deleted

UPDATE test_transactions
SET customer_id = 4
WHERE transaction_id = 7;

SELECT *FROM test_transactions;

DELETE FROM Customers WHERE customer_id = 4;