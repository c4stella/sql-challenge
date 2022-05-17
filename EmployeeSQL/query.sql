
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

--query 6: 
--CREATE VIEW q6 AS

--query 7: 
--CREATE VIEW q7 AS

--query 8: 
--CREATE VIEW q8 AS
