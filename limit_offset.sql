-- LIMIT can be used also with pagination

SELECT * FROM country
ORDER BY Name LIMIT 100; -- Used often with 'ORDER BY'

-- We can add an offset. 
-- Offset can only be used with ORDER BY and it's value >= 0.
-- Offset excludes the first amount of rows on a dataset
-- Offset + Fetch will return a defined rows dataset 
-- Fetch is optional

SELECT * FROM country
ORDER BY Name LIMIT 10, 10; -- Doesn't bring the first 10 results, but it brings the next 10 results

SELECT * FROM country
ORDER BY Name LIMIT 50, 10; -- Doesn't bring the first 10 results, but it brings the next 10 results

