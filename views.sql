SELECT * FROM Country LIMIT 10;

/*
	Run this query first
*/

/*QUERY STARTS*/
CREATE VIEW NorthAmericaPopulation AS 
SELECT SUM(Population) FROM Country WHERE Continent = 'North America';
/*QUERY ENDS*/

/* 
	After query creation, refresh schemas to check views
    and then, run this query
*/
SELECT * FROM northamericapopulation;