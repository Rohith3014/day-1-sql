-- Create Database
CREATE DATABASE IF NOT EXISTS company_db;

-- Use Database
USE company_db;

-- Employees Table
CREATE TABLE employees (
    emp_id INT PRIMARY KEY AUTO_INCREMENT,
    emp_name VARCHAR(50),
    department VARCHAR(30),
    salary INT,
    city VARCHAR(30)
);

INSERT INTO employees (emp_name, department, salary, city)
VALUES
('Rohith', 'IT', 60000, 'Bangalore'),
('Divya', 'HR', 45000, 'Mysore'),
('Hithesh', 'Finance', 50000, 'Hyderabad'),
('Rakshitha', 'IT', 65000, 'Chennai');

SELECT * FROM employees;

SELECT emp_name, salary FROM employees;

SELECT * FROM employees
WHERE department = 'IT';

UPDATE employees
SET salary = 55000
WHERE emp_name = 'Hithesh';

UPDATE employees
SET city = 'Pune'
WHERE emp_name = 'Rakshitha';

DELETE FROM employees
WHERE emp_name = 'Divya';

DELETE FROM employees
WHERE salary < 50000;


-- Courses Table
CREATE TABLE courses (
    course_id INT PRIMARY KEY AUTO_INCREMENT,
    course_name VARCHAR(50),
    duration_months INT,
    fee INT
);

INSERT INTO courses (course_name, duration_months, fee)
VALUES
('Python', 6, 20000),
('Java', 8, 25000),
('SQL', 4, 15000);

SELECT * FROM courses;

UPDATE courses
SET fee = 22000
WHERE course_name = 'Python';

DELETE FROM courses
WHERE duration_months < 5;


-- Products Table
CREATE TABLE products (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(50),
    price INT,
    stock INT
);

INSERT INTO products (product_name, price, stock)
VALUES
('Laptop', 70000, 15),
('Mouse', 500, 50),
('Keyboard', 1200, 30),
('Monitor', 15000, 8);

SELECT product_name, price FROM products;

UPDATE products
SET price = 72000
WHERE product_name = 'Laptop';

DELETE FROM products
WHERE stock < 10;


-- Students Table
CREATE TABLE students (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50),
    marks INT,
    city VARCHAR(30)
);

INSERT INTO students (name, marks, city)
VALUES
('Rohith', 85, 'Bangalore'),
('Divya', 78, 'Mysore'),
('Hithesh', 65, 'Hyderabad'),
('Rakshitha', 90, 'Chennai'),
('Arjun', 72, 'Pune');

SELECT * FROM students
WHERE marks > 70;

UPDATE students
SET marks = 80
WHERE name = 'Divya';

DELETE FROM students
WHERE city = 'Hyderabad';


-- Orders Table
CREATE TABLE orders (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_name VARCHAR(50),
    product VARCHAR(50),
    amount INT
);

INSERT INTO orders (customer_name, product, amount)
VALUES
('Rohith', 'Laptop', 70000),
('Divya', 'Mouse', 600),
('Hithesh', 'Keyboard', 1200),
('Rakshitha', 'Monitor', 15000),
('Arjun', 'USB Cable', 200);

SELECT * FROM orders
WHERE amount > 500;

UPDATE orders
SET amount = 800
WHERE customer_name = 'Divya';

DELETE FROM orders
WHERE amount < 300;