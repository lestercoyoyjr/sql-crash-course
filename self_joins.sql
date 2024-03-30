-- SELF JOIN
-- joins another copy of a table to itself
-- used to compare rows of the same table
-- helps to display a hierarchy of data

SELECT * FROM Country;

SELECT * FROM Country AS A
INNER JOIN Country AS B
ON A.Name = B.LocalName;

SELECT A.Code, A.Name, B.Code2, B.LocalName FROM Country AS A
INNER JOIN Country AS B
ON A.Name = B.LocalName;

-- With functions
SELECT A.Code, A.Name, 
CONCAT(B.Code2, " ", B.LocalName) AS "Second Country's Name"
FROM Country AS A
INNER JOIN Country AS B
ON A.Name = B.LocalName;

-- LEFT/RIGHT
SELECT A.Code, A.Name, 
B.Code2, B.LocalName FROM Country AS A
LEFT JOIN Country AS B
ON A.Name = B.LocalName; -- From table A

SELECT A.Code, A.Name, 
B.Code2, B.LocalName FROM Country AS A
RIGHT JOIN Country AS B
ON A.Name = B.LocalName; -- From table B

SELECT * FROM Country