-- How many people were hired on any given hire date?
SELECT hire_date, count(emp_no) AS "noOfHire"
    FROM employees
    GROUP BY hire_date
    ORDER BY "noOfHire" DESC;

--  Show me all the employees, hired after 1991 and count the amount of positions they've had
SELECT e.emp_no,count(t.title) AS "amoount of titles"
    FROM employees AS e
    INNER JOIN titles AS t ON e.emp_no = t.emp_no -- USING(emp_no) 
    WHERE EXTRACT(YEAR FROM e.hire_date) > 1991
    GROUP BY e.emp_no
    ORDER BY e.emp_no;

--  Show me all the employees that work in the department development and the from and to date.
SELECT e.emp_no, de.from_date, de.to_date
    FROM employees AS e
    INNER JOIN dept_emp AS de
    USING(emp_no)
    WHERE de.dept_no = 'd005'
    GROUP BY e.emp_no, de.from_date, de.to_date
    ORDER BY e.emp_no, de.to_date;