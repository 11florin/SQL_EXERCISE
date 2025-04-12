--Question: Get me all the employees above 60, use the appropriate date functions
SELECT AGE(birth_date), * FROM employees
WHERE  EXTRACT(YEAR FROM AGE(birth_date)) > 60;

--avternative
SELECT count(birth_date) FROM employees
WHERE birth_date > now() - INTERVAL '61 years'; --61 years before the current date

-- Question: How many employees where hired in February?
SELECT count(emp_no) FROM employees
WHERE EXTRACT(MONTH FROM hire_date) = 2;

--Question: How many employees were born in november?
SELECT count(emp_no) FROM employees
WHERE EXTRACT(MONTH FROM birth_date) = 11;

--Question: Who is the oldest employee? (Use the analytical function MAX)
SELECT MAX(AGE(birth_date)) FROM employees;

--Question: How many orders were made in January 2004?
SELECT count(orderid) FROM orders
WHERE DATE_TRUNC('month', orderdate) = date '2004-01-01';