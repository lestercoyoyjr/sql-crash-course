CREATE TABLE Customers (
	customer_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50)
);

SELECT * FROM Customers;

INSERT INTO Customers (first_name, last_name)
VALUES ("Fred", "Fish"),
	   ("Larry", "Lobster"),
       ("Bubble", "Bass");
       
ALTER TABLE test_transactions
ADD COLUMN customer_id INT;

ALTER TABLE test_transactions
ADD FOREIGN KEY (customer_id) REFERENCES Customers(customer_id); /* ALTER to add a foreing key to an existing column*/

ALTER TABLE test_transactions
ADD CONSTRAINT fk_customer_id
FOREIGN KEY (customer_id) REFERENCES Customers(customer_id); /*ALTER to add a column and a foreign key to that column*/

SELECT * FROM test_transactions;

ALTER TABLE test_transactions
DROP FOREIGN KEY test_transactions_ibfk_1; /*This is the unique name given by the RMDB*/

INSERT INTO test_transactions (amount, customer_id)
VALUES (4.99,3),
	   (2.89,2),
       (3.38,3),
       (4.99,1);