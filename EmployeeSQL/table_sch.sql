--drop pre-existing tables, if any

DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS titles;


--creating tables for importing csv data

CREATE TABLE departments (
    dept_no varchar NOT NULL,
    dept_name varchar NOT NULL,
    PRIMARY KEY (dept_no)
);

CREATE TABLE titles (
    title_id varchar NOT NULL,
    title varchar NOT NULL,
    PRIMARY KEY (title_id)
);

CREATE TABLE employees (
    emp_no int NOT NULL,
    emp_title_id varchar NOT NULL,
    birth_date date NOT NULL,
    first_name varchar NOT NULL,
    last_name varchar NOT NULL,
    sex CHAR(1) NOT NULL,
    hire_date date NOT NULL,
    PRIMARY KEY (emp_no),
    FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

CREATE TABLE dept_emp (
    emp_no int NOT NULL,
    dept_no varchar NOT NULL,
    PRIMARY KEY (emp_no, dept_no),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

CREATE TABLE dept_manager (
    dept_no varchar NOT NULL,
    emp_no int NOT NULL,
    PRIMARY KEY (dept_no, emp_no),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

CREATE TABLE salaries (
    emp_no int NOT NULL,
    salary int NOT NULL,
    PRIMARY KEY (emp_no, salary),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

