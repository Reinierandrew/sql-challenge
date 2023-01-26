-- CREATE TABLES FOR PEWLETT HACKARD
-- as per ERD created
-- I am using NOT NULL for all as I wanted to determine if there were any
-- empty fields in the CSV's (which there were not)

-- When importing CSV's from data directory do so in the sequence below
-- to avoid conflicts with constraints

-- DEPARTMENTS
DROP TABLE IF EXISTS departments CASCADE;
CREATE TABLE departments
(
    dept_no   VARCHAR(4)  NOT NULL PRIMARY KEY,
    dept_name VARCHAR(18) NOT NULL
);

-- TITLES
DROP TABLE IF EXISTS titles CASCADE;
CREATE TABLE titles
(
    title_id VARCHAR(5)  NOT NULL PRIMARY KEY,
    title    VARCHAR(18) NOT NULL
);

-- EMPLOYEES
DROP TABLE IF EXISTS employees CASCADE;
CREATE TABLE employees
(
    emp_no     INT         NOT NULL PRIMARY KEY,
    emp_title  VARCHAR(5)  NOT NULL,
    birth_date date        NOT NULL,
    first_name VARCHAR(14) NOT NULL,
    last_name  VARCHAR(16) NOT NULL,
    sex        VARCHAR(1)  NOT NULL,
    hire_date  date        NOT NULL,
    FOREIGN KEY (emp_title) REFERENCES titles (title_id)
);

-- EMPLOYEES and their DEPARTMENTS. Note an eployee can work in more than 1 department
DROP TABLE IF EXISTS dept_emp CASCADE;
CREATE TABLE dept_emp
(
    emp_no  INT        NOT NULL,
    dept_no VARCHAR(4) NOT NULL,
    PRIMARY KEY (emp_no, dept_no),
    FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments (dept_no)
);

-- DEPARTMENT MANAGERS. Note there can be more than 1 manager per department
DROP TABLE IF EXISTS dept_manager CASCADE;
CREATE TABLE dept_manager
(
    dept_no VARCHAR(4) NOT NULL,
    emp_no  INT        NOT NULL,
    PRIMARY KEY (dept_no, emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
    FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
);

-- SALARIES
DROP TABLE IF EXISTS salaries CASCADE;
CREATE TABLE salaries
(
    emp_no INT NOT NULL PRIMARY KEY,
    salary INT NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
);


