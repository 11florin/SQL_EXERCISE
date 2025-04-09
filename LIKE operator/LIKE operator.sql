SELECT * FROM employees
WHERE first_name ILIKE 'g%';

-- Question: Find the age of all employees who's name starts with M.
SELECT emp_no, first_name, EXTRACT(YEAR FROM age (birth_date)) AS "age" FROM employees
WHERE first_name ILIKE 'M%';

-- Question: How many people's name start with A and end with R?
SELECT count(*) FROM employees
WHERE first_name ILIKE 'A%R';

-- Question: How many people's zipcode have a 2 in it?.
SELECT COUNT(*) FROM customers
WHERE zip::TEXT LIKE '%2%';

--  Question: How many people's zipcode start with 2 with the 3rd character being a 1.
SELECT count(*) FROM customers
WHERE zip::TEXT LIKE '2_1%';

--  Question: Which states have phone numbers starting with 302?
SELECT COALESCE(state, 'No State') AS "State" FROM customers
WHERE phone::TEXT LIKE '302%';