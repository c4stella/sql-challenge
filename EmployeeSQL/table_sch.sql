--drop pre-existing tables
DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS titles;


--creating tables for importing csv data
CREATE TABLE departments (
    dept_no varchar NOT NULL,
    dept_name varchar NOT NULL
    --create PRIMARY KEY and FOREIGN KEY
);

CREATE TABLE dept_emp (
    emp_no int NOT NULL,
    dept_no varchar NOT NULL
    --create PRIMARY KEY and FOREIGN KEY
);

CREATE TABLE dept_manager (
    dept_no varchar NOT NULL,
    emp_no int NOT NULL
    --create PRIMARY KEY and FOREIGN KEY
);

CREATE TABLE employees (
    emp_no int NOT NULL,
    emp_title_id varchar NOT NULL,
    birth_date varchar NOT NULL,
    first_name varchar NOT NULL,
    last_name varchar NOT NULL,
    sex CHAR(1) NOT NULL,
    hire_date varchar NOT NULL
    --create PRIMARY KEY and FOREIGN KEY
);

CREATE TABLE salaries (
    emp_no int NOT NULL,
    salary int NOT NULL
    --create PRIMARY KEY and FOREIGN KEY
);

CREATE TABLE titles (
    title_id varchar NOT NULL,
    title varchar NOT NULL
    --create PRIMARY KEY and FOREIGN KEY
);