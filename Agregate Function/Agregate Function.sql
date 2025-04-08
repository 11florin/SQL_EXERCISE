-- Question 1: What is the average salary for the company?
SELECT avg(salary) FROM salaries;

-- Question 2: What year was the youngest person born in the company?

SELECT max(birth_date) FROM employees;
 
-- Question 1: How many towns are there in france?

SELECT count(id) FROM towns;


-- Question 1: How many official languages are there?

SELECT count(countrycode) FROM countrylanguage
WHERE isofficial = TRUE;

-- Question 2: What is the average life expectancy in the world?

SELECT avg(lifeexpectancy) FROM country;

-- Question 3: What is the average population for cities in the netherlands?

SELECT AVG(population) FROM city
WHERE countrycode = 'NLD';
WHERE age BETWEEN 20 AND 50;