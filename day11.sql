CREATE DATABASE sql_practice;

USE sql_practice;

CREATE TABLE customers (
customer_id INT PRIMARY KEY,
name VARCHAR(50),
city VARCHAR(50)
);

INSERT INTO customers VALUES
(1,'Rohith','Bangalore'),
(2,'Divya','Mumbai'),
(3,'Hithesh','Delhi'),
(4,'Rakshitha','Chennai');

CREATE TABLE orders (
order_id INT PRIMARY KEY,
customer_id INT,
amount INT,
FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

INSERT INTO orders VALUES
(101,1,500),
(102,1,700),
(103,2,300),
(104,3,900),
(105,3,400);

SELECT c.name, SUM(o.amount) AS total_amount
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id
GROUP BY c.name;

SELECT c.name, SUM(o.amount) AS total
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id
GROUP BY c.name
ORDER BY total DESC
LIMIT 1;

SELECT c.name, COUNT(o.order_id) AS order_count
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id
GROUP BY c.name;

SELECT c.name
FROM customers c
LEFT JOIN orders o
ON c.customer_id = o.customer_id
WHERE o.order_id IS NULL;

SELECT c.name, AVG(o.amount) AS avg_order
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id
GROUP BY c.name;