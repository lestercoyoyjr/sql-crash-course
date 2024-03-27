SELECT * FROM Country;

SELECT * FROM City;

SELECT * FROM CountryLanguage;

CREATE TABLE Test (
	my_date DATE,
    my_time TIME,
    my_datetime DATETIME
);

SELECT * FROM Test;

INSERT INTO Test
VALUES (current_date(), current_time(), NOW());

INSERT INTO Test
VALUES (current_date() + 1, current_time()+1, NOW()+1);

INSERT INTO Test
VALUES (current_date() - 1, current_time()+1, NOW()+1);

DROP TABLE Test;