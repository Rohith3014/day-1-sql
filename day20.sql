CREATE DATABASE IF NOT EXISTS company_db4;

USE company_db4;

DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS departments;

CREATE TABLE departments (
dept_id INT PRIMARY KEY,
dept_name VARCHAR(50)
);

INSERT INTO departments VALUES
(1,'IT'),
(2,'HR'),
(3,'Sales');

CREATE TABLE employees (
emp_id INT PRIMARY KEY,
name VARCHAR(50),
dept_id INT,
salary INT,
FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
);

INSERT INTO employees VALUES
(1,'Rohith',1,50000),
(2,'Divya',1,60000),
(3,'Hithesh',2,45000),
(4,'Rakshitha',2,70000),
(5,'Kiran',1,55000),
(6,'Anil',3,65000);

-- 1. INNER JOIN
SELECT e.name, d.dept_name, e.salary
FROM employees e
INNER JOIN departments d
ON e.dept_id = d.dept_id;

-- 2. LEFT JOIN
SELECT e.name, d.dept_name
FROM employees e
LEFT JOIN departments d
ON e.dept_id = d.dept_id;

-- 3. RIGHT JOIN
SELECT e.name, d.dept_name
FROM employees e
RIGHT JOIN departments d
ON e.dept_id = d.dept_id;

-- 4. Employees with highest salary in each department
SELECT d.dept_name, MAX(e.salary) AS highest_salary
FROM employees e
JOIN departments d
ON e.dept_id = d.dept_id
GROUP BY d.dept_name;

-- 5. Employees earning more than department average
SELECT name, salary, dept_id
FROM employees e1
WHERE salary > (
    SELECT AVG(salary)
    FROM employees e2
    WHERE e1.dept_id = e2.dept_id
);

-- 6. Count employees in each department
SELECT d.dept_name, COUNT(e.emp_id) AS total_employees
FROM departments d
LEFT JOIN employees e
ON d.dept_id = e.dept_id
GROUP BY d.dept_name;

-- 7. Departments with more than 1 employee
SELECT d.dept_name, COUNT(e.emp_id) AS total
FROM departments d
JOIN employees e
ON d.dept_id = e.dept_id
GROUP BY d.dept_name
HAVING COUNT(e.emp_id) > 1;

-- 8. Second highest salary
SELECT MAX(salary) AS second_highest
FROM employees
WHERE salary < (SELECT MAX(salary) FROM employees);

-- 9. Employees whose name contains 'a'
SELECT * FROM employees
WHERE name LIKE '%a%';

-- 10. Order by salary descending
SELECT * FROM employees
ORDER BY salary DESC;