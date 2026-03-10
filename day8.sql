create database company_db;

use company_db;

CREATE TABLE employees (
id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(50),
email VARCHAR(50),
city VARCHAR(50)
);

INSERT INTO employees (name, email, city) VALUES
('Rohith','rohith@gmail.com','Hassan'),
('Divya','divya@gmail.com','Belur'),
('Hithesh','hithesh@gmail.com','Bangalore'),
('Rakshitha','rakshitha@gmail.com','Chennai');

CREATE TABLE orders (
order_id INT AUTO_INCREMENT PRIMARY KEY,
customer_name VARCHAR(50),
order_date DATE
);

INSERT INTO orders (customer_name, order_date) VALUES
('Rohith','2026-03-10'),
('Divya','2026-03-09'),
('Hithesh','2026-03-01'),
('Rakshitha','2026-03-05');

SELECT CONCAT(name,' works in ',UPPER(city)) AS result
FROM employees;

SELECT SUBSTRING(name,1,2) AS first_two_letters
FROM employees;

SELECT email, LENGTH(email) AS email_length
FROM employees;

SELECT customer_name, YEAR(order_date) AS order_year
FROM orders;

SELECT customer_name,
DATEDIFF(CURDATE(),order_date) AS days_passed
FROM orders;

SELECT CONCAT(customer_name,' - Joined in ',YEAR(order_date)) AS result
FROM orders;

SELECT UPPER(name) AS employee_name,
LOWER(city) AS city
FROM employees;