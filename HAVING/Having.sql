SELECT d.dept_name, count(e.emp_no) AS "# of employees"
FROM employees AS e
INNER JOIN dept_emp AS de ON de.emp_no = e.emp_no
INNER JOIN departments AS d ON de.dept_no = d.dept_no
WHERE e.gender = 'F'
GROUP BY d.dept_name
HAVING count(e.emp_no) > 25000

-- Show me all the employees, hired after 1991, that have had more than 2 titles
SELECT e.emp_no, count(t.title) FROM employees AS e
INNER JOIN titles AS t ON e.emp_no = t.emp_no
WHERE EXTRACT(YEAR FROM e.hire_date) > 1991
GROUP BY e.emp_no
HAVING count(t.title) > 2
ORDER BY e.emp_no;

-- Show me all the employees that have had more than 15 salary changes that work in the department development
SELECT e.emp_no, count(s.from_date) AS "amount of raises" 
FROM employees AS e
INNER JOIN salaries AS s ON e.emp_no = s.emp_no
INNER JOIN dept_emp AS de ON de.emp_no = s.emp_no
WHERE de.dept_no = 'd005'
GROUP BY e.emp_no
HAVING count(s.from_date) > 15
ORDER BY e.emp_no;

-- Show me all the employees that have worked for multiple departments
SELECT e.emp_no, count(de.dept_no) AS "worked for multiple departments" 
FROM employees AS e
JOIN dept_emp AS de USING(emp_no)
GROUP BY e.emp_no
HAVING count(de.dept_no) > 1
ORDER BY e.emp_no;

