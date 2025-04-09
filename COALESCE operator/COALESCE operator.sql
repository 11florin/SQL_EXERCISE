-- Question: adjust the following query to display the null values as "No Address"
-SELECT COALESCE(address2, 'No Address') FROM customers;

-- Question: Fix the following query to apply proper 3VL
-- select * from customers where coalesce(address2, null) is not null;
-SELECT * FROM customers WHERE address2 IS NOT NULL;

-- * Question: Fix the following query to apply proper 3VL
-- select coalesce(lastname, 'Empty'), * from customers where (age = null);
SELECT COALESCE(lastname, 'Empty'), * FROM customers
WHERE (age IS NULL);