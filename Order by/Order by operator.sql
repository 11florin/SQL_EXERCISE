--Question: Sort employees by first name ascending and last name descending
 SELECT first_name, last_name FROM employees
 ORDER BY first_name ASC, last_name DESC;

-- Question: Sort employees by age
SELECT * FROM employees
ORDER BY birth_date;

--Question: Sort employees who's name starts with a "k" by hire_date
SELECT * FROM employees
WHERE first_name ILIKE 'k%'
ORDER BY hire_date;  