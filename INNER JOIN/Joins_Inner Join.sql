--Question: Get all orders from customers who live in Ohio (OH), New York (NY) or Oregon (OR) state ordered by orderid
SELECT c.firstname, c.lastname, o.orderid 
FROM orders AS o
INNER JOIN customers AS c 
ON c.customerid = o.customerid
WHERE state IN ('OH', 'NY', 'OR')
ORDER BY orderid;

--Question: Show me the inventory for each product
SELECT p.prod_id, i.quan_in_stock FROM products AS p
INNER JOIN inventory AS i 
ON p.prod_id = i.prod_id;

--Question: Show me for each employee which department they work in
SELECT e.first_name, dp.dept_name
FROM employees AS e
INNER JOIN dept_emp AS de ON de.emp_no = e.emp_no
INNER JOIN departments AS dp ON dp.dept_no = de.dept_no;