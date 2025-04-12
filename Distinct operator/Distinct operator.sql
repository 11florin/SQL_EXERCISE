--Question: What unique titles do we have?
SELECT DISTINCT title FROM titles;

--Question: How many unique birth dates are there?
SELECT count(DISTINCT birth_date) FROM employees;

-- Question: Can I get a list of distinct life expectancy ages
SELECT DISTINCT lifeexpectancy FROM country 
WHERE lifeexpectancy IS NOT NULL 
ORDER BY lifeexpectancy;