SELECT * FROM Country;

CREATE TABLE Test_transactions (
	transaction_id INT,
    amount DECIMAL(5,2),
    transaction_date DATETIME DEFAULT NOW()
);

SELECT * FROM Test_transactions;

INSERT INTO Test_transactions (transaction_id,amount) VALUES (2, 5.99);

ALTER TABLE Test_transactions
ADD CONSTRAINT PRIMARY KEY (transaction_id);