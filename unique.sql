/*
	To make the column from a table has unique values
*/

ALTER TABLE Country
ADD CONSTRAINT
UNIQUE (Name);

SELECT * FROM COUNTRY;