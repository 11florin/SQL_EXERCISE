-- Question: Get all orders from customers who live in Ohio (OH), New York (NY) or Oregon (OR) state ordered by orderid?
SELECT c.firstname, c.lastname, o.orderid
FROM orders AS o, (
    SELECT customerid, state, firstname, lastname
    FROM customers
)AS c
WHERE o.customerid = c.customerid AND c.state IN ('NY', 'OH', 'OR')
ORDER BY o.orderid;

--Question: Filter employees who have emp_no 110183 as a manager
SELECT emp_no, first_name, last_name
FROM employees
WHERE emp_no IN (
    SELECT emp_no
    FROM dept_emp
    WHERE dept_no = (
        SELECT dept_no 
        FROM dept_manager
        WHERE emp_no = 110183
    )
)
ORDER BY emp_no;

-- with JOIN
SELECT e.emp_no, first_name, last_name
FROM employees AS e
JOIN dept_emp AS de USING (emp_no)
JOIN dept_manager AS dm USING (dept_no)
WHERE dm.emp_no = 110183