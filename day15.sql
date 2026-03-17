-- Create Database
CREATE DATABASE company_db;
USE company_db;

-- Create Customers Table
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(50)
);

-- Insert Data into Customers
INSERT INTO customers VALUES
(1,'Rohith'),
(2,'Divya'),
(3,'Hithesh'),
(4,'Rakshitha');

-- Create Orders Table
CREATE TABLE orders (
    order_id INT,
    customer_id INT
);

-- Insert Data into Orders
INSERT INTO orders VALUES
(101,1),
(102,2),
(103,1),
(104,3);

--------------------------------------------------
-- 1. Subquery (Single Row)
SELECT name
FROM customers
WHERE customer_id = (
    SELECT customer_id 
    FROM orders 
    WHERE order_id = 101
);

--------------------------------------------------
-- 2. Subquery with IN
SELECT name
FROM customers
WHERE customer_id IN (
    SELECT customer_id 
    FROM orders
);

--------------------------------------------------
-- 3. EXISTS
SELECT name
FROM customers c
WHERE EXISTS (
    SELECT 1 
    FROM orders o 
    WHERE o.customer_id = c.customer_id
);

--------------------------------------------------
-- 4. NOT EXISTS
SELECT name
FROM customers c
WHERE NOT EXISTS (
    SELECT 1 
    FROM orders o 
    WHERE o.customer_id = c.customer_id
);

--------------------------------------------------
-- 5. View
CREATE VIEW customer_orders AS
SELECT c.name, o.order_id
FROM customers c
JOIN orders o 
ON c.customer_id = o.customer_id;

-- Use View
SELECT * FROM customer_orders;

--------------------------------------------------
-- 6. Index
CREATE INDEX idx_customer_name
ON customers(name);

--------------------------------------------------
-- 7. Highest Order (Subquery)
SELECT name
FROM customers
WHERE customer_id = (
    SELECT customer_id
    FROM orders
    WHERE order_id = (
        SELECT MAX(order_id) FROM orders
    )
);