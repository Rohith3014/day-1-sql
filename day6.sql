--  Create Database
CREATE DATABASE company_db;
--  Use Database
USE company_db;
--  Create Table
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE,
    salary INT DEFAULT 30000
);
--  Insert Employees
INSERT INTO employees VALUES
(1,'Rohith','rohith@mane.com',40000.00);
INSERT INTO employees VALUES
(2,'Divya','divya@mane.com',39500.00);
-- (default will apply)
INSERT INTO employees (emp_id,emp_name,email)
VALUES (3,'Hithesh','hithesh@mane.com');
INSERT INTO employees (emp_id,emp_name,email)
VALUES (4,'Rakshitha','rakshitha@mane.com');
INSERT INTO employees (emp_id,emp_name,email)
VALUES (5,'Kiran','kiran@mane.com');
INSERT INTO employees (emp_id,emp_name,email)
VALUES (6,'Sneha','sneha@mane.com');
--  View Table Data
SELECT * FROM employees;