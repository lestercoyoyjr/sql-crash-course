/*
	AUTOINCREMENT
*/

SELECT * FROM Test_transactions;

ALTER TABLE Test_transactions
MODIFY transaction_id INT NOT NULL AUTO_INCREMENT;

INSERT INTO Test_transactions (amount) VALUES (6.99);

ALTER TABLE Test_transactions AUTO_INCREMENT = 1000; /* it will start in 1000 */