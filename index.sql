-- INDEX (Binary Tree Data Structure)
-- Indexes are used to find values withing a specific column more quickly
-- MYSQL normally searches sequentially thorugh a column
-- The longer column, the more expensive the operation is
-- UPDATE takes more time, SELECT TAKES LESS TIME

SELECT * FROM Country;

SHOW INDEXES FROM Country;

CREATE INDEX region_idx ON Country(Region);

SELECT * FROM Country
WHERE Region = "North America";

-- Comparison with above
SELECT * FROM Country
WHERE Continent = "North America";

-- MULTI COLUMN INDEX
CREATE INDEX Continent_Region_idx
ON Country(Continent, Region); -- MySQL has what's known as LEFT MOST PREFIX with indexes

SHOW INDEX FROM Country;

SELECT * FROM Country
WHERE Continent = "North America" AND Region = "Caribbean";

-- Check if I only use 'REGION'
-- Not taking into account 'LEFT MOST PREFIX'
SELECT * FROM Country
WHERE Region = "Caribbean";

-- DELETE AN INDEX
ALTER TABLE Country
DROP INDEX region_idx;