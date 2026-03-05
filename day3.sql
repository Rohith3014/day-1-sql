-- create database
CREATE DATABASE company_db;
-- use the database
USE company_db;
-- create table
CREATE TABLE employees (
    emp_id INT,
    emp_name VARCHAR(50),
    department VARCHAR(50),
    experience INT,
    salary DECIMAL(10,2)
);
-- insert values
INSERT INTO employees VALUES (1, 'Rohith', 'IT', 5, 56000.00);
INSERT INTO employees VALUES (2, 'Divya', 'IT', 4, 57000.00);
INSERT INTO employees VALUES (3, 'Mohith', 'HR', 3, 15000.00);
INSERT INTO employees VALUES (4, 'Anjali', 'IT', 5, 45000.00);
INSERT INTO employees VALUES (5, 'Daayana', 'HR', 5, 15000.00);
INSERT INTO employees VALUES (6, 'Meena', 'Finance', 5, 10000.00);

-- show all data
SELECT * FROM employees;
-- show employees who work in IT department and salary greater than 55000
SELECT *
FROM employees
WHERE department = 'IT' AND salary > 55000;
-- show employees sorted by salary from highest to lowest
SELECT *
FROM employees
ORDER BY salary DESC;
-- show top 2 highest paid employees who are not in HR department
SELECT *
FROM employees
WHERE department != 'HR'
ORDER BY salary DESC
LIMIT 2;