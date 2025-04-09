SELECT * FROM employees
WHERE emp_no IN (100001, 100006, 11008);

-- Question: How many orders were made by customer 7888, 1082, 12808, 9623
SELECT count(orderid) FROM orders 
WHERE customerid IN (7888, 1082, 12808, 9623); 

-- Question: How many cities are in the district of Zuid-Holland, Noord-Brabant and Utrecht?
SELECT count(id) FROM city
WHERE district IN ('Zulid-Holland', 'Noord-Brabant', 'Utrecht');