-- Create Database
CREATE DATABASE student_project;

-- Use Database
USE student_project;

-- Create Table
CREATE TABLE students (
id INT PRIMARY KEY,
name VARCHAR(50),
age INT,
marks INT,
city VARCHAR(50)
);

-- Insert Data
INSERT INTO students VALUES
(1,'Rohith',20,85,'Bangalore'),
(2,'Divya',21,78,'Mysore'),
(3,'Arjun',20,92,'Chennai'),
(4,'Sneha',22,67,'Hyderabad'),
(5,'Rahul',21,74,'Bangalore'),
(6,'Pooja',20,81,'Chennai'),
(7,'Kiran',22,88,'Mysore'),
(8,'Ananya',21,90,'Bangalore'),
(9,'Varun',20,73,'Hyderabad'),
(10,'Megha',22,95,'Chennai');

-- 1. Count students in each age group
SELECT age, COUNT(*) AS total_students
FROM students
GROUP BY age;

-- 2. Average marks of each age group
SELECT age, AVG(marks) AS average_marks
FROM students
GROUP BY age;

-- 3. Age groups having more than 2 students
SELECT age, COUNT(*) AS total_students
FROM students
GROUP BY age
HAVING COUNT(*) > 2;

-- 4. Highest marks in each age group
SELECT age, MAX(marks) AS highest_marks
FROM students
GROUP BY age;

-- 5. Age groups where average marks > 75
SELECT age, AVG(marks) AS average_marks
FROM students
GROUP BY age
HAVING AVG(marks) > 75;

-- 6. Count students per city
SELECT city, COUNT(*) AS total_students
FROM students
GROUP BY city;

-- 7. Cities having more than 2 students
SELECT city, COUNT(*) AS total_students
FROM students
GROUP BY city
HAVING COUNT(*) > 2;