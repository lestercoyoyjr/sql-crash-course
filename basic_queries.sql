/* Some important concepts
Data Types
INT 100, 200, 300, 1000
DECIMAL 25.8, 100.5, 3.14
VARCHAR()
DATE
*/

CREATE DATABASE CustomerDB;

USE CustomerDB;

CREATE TABLE Customer(
	CustomerID INT PRIMARY KEY,
    Name VARCHAR(100),
    Address VARCHAR(250),
    City VARCHAR(50),
    PostalCode VARCHAR(20),
    Country VARCHAR(50)
);

INSERT INTO Customer values(
	1, 'Ada Keyes', '2630 North Bend River Road', 'Johnsville', '41043', 'United States'
);

INSERT INTO Customer values(
	2, 'Janet J. Carrillo', '2512 Parkview Drive', 'Anaheim', '92804', 'United States'
);

SELECT * FROM Customer;

/*
Multiple Row
INSERT INTO  <<Table_Name>> (colum_list)
values
(Value, Value, Value, etc.),
(Value, Value, Value, etc.)
*/

INSERT INTO Customer (CustomerID, Name, Address, City, PostalCode, Country) VALUES 
(3, 'Janet J. Carrillo', '2512 Parkview Drive', 'Anaheim', '92804', 'United States'),
(4, 'Ada Keyes', '2630 North Bend River Road', 'Johnsville', '41043', 'United States');