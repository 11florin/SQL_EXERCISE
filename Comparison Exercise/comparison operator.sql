
-- How many female customers do we have from the state of Oregon (OR)?
SELECT gender, state FROM customers WHERE state = 'OR' AND gender = 'F';

-- Who over the age of 44 has an income of 100 000 or more?
SELECT count(income) FROM customers WHERE age > 44 AND income >= 100_000;

-- Who between the ages of 30 and 50 has an income of less than 50 000?
SELECT count(income) FROM customers WHERE age >= 30 AND age <= 50 AND income < 50_000;

-- What is the average income between the ages of 20 and 50?
SELECT avg(income) FROM customers WHERE age >= 20 AND age <= 50;