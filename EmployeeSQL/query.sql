
--query 1: employee number, last name, first name, sex, salary
--CREATE VIEW q1 AS
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees AS e
INNER JOIN salaries AS s ON
s.emp_no = e.emp_no;

--query 2: first name, last name, hire date for all hired before 1986
--CREATE VIEW q2 AS
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date < '1986-01-01';

--query 3: dept number, dept name, employee number of manager, last name, first name
--CREATE VIEW q3 AS
SELECT dm.dept_no, d.dept_name, e.emp_no, e.last_name, e.first_name
FROM employees AS e
INNER JOIN dept_manager AS dm ON
dm.emp_no = e.emp_no
INNER JOIN departments AS d ON
d.dept_no = dm.dept_no;

--query 4: employee number, last name, first name, department name
--CREATE VIEW q4 AS
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e
INNER JOIN dept_emp AS de ON
de.emp_no = e.emp_no
INNER JOIN departments AS d ON
d.dept_no = de.dept_no;

--query 5: first name, last name, sex for all with Hercules as first name, last name starting with B
--CREATE VIEW q5 AS
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';

--query 6: all employees in sales department, with their employee number, last name, first name, dept name
--CREATE VIEW q6 AS
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e
INNER JOIN dept_emp AS de ON
de.emp_no = e.emp_no
INNER JOIN departments AS d ON
d.dept_no = de.dept_no
WHERE dept_name = 'Sales'

--query 7: all employees in sales and development departments, with their employee number, last name, first name, dept name
--CREATE VIEW q7 AS
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e
INNER JOIN dept_emp AS de ON
de.emp_no = e.emp_no
INNER JOIN departments AS d ON
d.dept_no = de.dept_no
WHERE dept_name = 'Sales' OR dept_name = 'Development'

--query 8: frequency count of employee last names, in descending order
--CREATE VIEW q8 AS
SELECT last_name, COUNT(*)
FROM employees
GROUP BY last_name
ORDER BY COUNT(*) DESC;
