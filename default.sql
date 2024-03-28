SELECT * FROM Country;

CREATE TABLE Test_transactions (
	transaction_id INT,
    amount DECIMAL(5,2),
    transaction_date DATETIME DEFAULT NOW()
);

SELECT * FROM Test_transactions;

INSERT INTO Test_transactions (transaction_id,amount) VALUES (1, 4.99);