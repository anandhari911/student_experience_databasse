Employee Project Database – SQL Project Documentation
Project Title

Employee Management Database Using SQL

1. Project Overview

This project demonstrates the creation and management of an employee database using SQL. It includes database creation, table creation, data insertion, data retrieval, aggregation functions, filtering, sorting, window functions, and table modification.

The objective is to practice SQL concepts commonly used in Data Analytics and Database Management.

2. Database Creation
CREATE DATABASE project;
USE project;
Purpose
Creates a database named project.
Sets it as the active database for further operations.
3. Table Creation
CREATE TABLE employee_project
(
    name VARCHAR(20),
    age INT,
    exp INT
);
Table Structure
Column Name	Data Type	Description
name	VARCHAR(20)	Employee Name
age	INT	Employee Age
exp	INT	Years of Experience
4. Data Insertion
INSERT INTO employee_project
VALUES
("Akshay",28,2),
("John",27,3),
("Harsh",26,1),
("Sara",28,5),
("Ritika",23,0);
Additional Record
INSERT INTO employee_project
VALUES ("Harsh",26,2);
Sample Data
Name	Age	Experience
Akshay	28	2
John	27	3
Harsh	26	1
Sara	28	5
Ritika	23	0
Harsh	26	2
5. SQL Queries and Analysis
5.1 Display All Records
SELECT * FROM employee_project;

Purpose: Retrieves all employee details.

5.2 Employees Older Than 26
SELECT * FROM employee_project
WHERE age > 26;

Purpose: Filters employees above age 26.

5.3 Employees With Experience Greater Than 1 Year
SELECT * FROM employee_project
WHERE exp > 1;

Purpose: Finds experienced employees.

5.4 Ranking Employees by Experience
SELECT *,
RANK() OVER(ORDER BY exp) AS total_rank
FROM employee_project;

Purpose: Assigns ranks based on employee experience.

5.5 Youngest Employee Age
SELECT MIN(age) AS young_age
FROM employee_project;

Purpose: Finds the minimum age among employees.

5.6 Employees Between Ages 24 and 28
SELECT *
FROM employee_project
WHERE age BETWEEN 24 AND 28;

Purpose: Filters employees within a specific age range.

5.7 Average Employee Age
SELECT AVG(age) AS average_age
FROM employee_project;

Purpose: Calculates average employee age.

5.8 Total Experience of Employees
SELECT SUM(exp) AS total_experience
FROM employee_project;

Purpose: Calculates total years of experience.

5.9 Names Starting With 'S'
SELECT name
FROM employee_project
WHERE name LIKE 'S%';

Purpose: Finds employees whose names start with "S".

5.10 Age Range
SELECT MAX(age)-MIN(age) AS range_employee
FROM employee_project;

Purpose: Calculates age difference between oldest and youngest employees.

5.11 Duplicate Age Analysis
SELECT age,
COUNT(*) AS same_age
FROM employee_project
GROUP BY age
HAVING COUNT(*) > 1
ORDER BY age;

Purpose: Identifies ages shared by multiple employees.

5.12 Sort Employees by Age
SELECT *
FROM employee_project
ORDER BY age;

Purpose: Displays employees in ascending order of age.

5.13 Sort Employees by Experience
SELECT *
FROM employee_project
ORDER BY exp DESC;

Purpose: Displays employees from most experienced to least experienced.

5.14 Total Number of Employees
SELECT COUNT(*)
FROM employee_project;

Purpose: Counts total employee records.

5.15 Oldest Employee
SELECT MAX(age) AS oldest
FROM employee_project;

Purpose: Finds maximum employee age.

5.16 Maximum Experience
SELECT MAX(exp)
FROM employee_project;

Purpose: Finds highest experience value.

5.17 Freshers (0 Experience)
SELECT *
FROM employee_project
WHERE exp = 0;

Purpose: Identifies employees with no experience.

5.18 Minimum Experience
SELECT MIN(exp)
FROM employee_project;

Purpose: Finds least experience value.

5.19 Names Containing Letter 'A'
SELECT name
FROM employee_project
WHERE name LIKE '%a%';

Purpose: Searches employee names containing "a".

5.20 Average Experience
SELECT AVG(exp) AS average_experience
FROM employee_project;

Purpose: Calculates average years of experience.

5.21 Row Number Based on Age
SELECT *,
ROW_NUMBER() OVER(ORDER BY age) AS row_age
FROM employee_project;

Purpose: Assigns sequential row numbers according to age.

6. Table Modification
Add Employee ID as Primary Key
ALTER TABLE employee_project
ADD COLUMN id INT AUTO_INCREMENT PRIMARY KEY;
Updated Table Structure
ID	Name	Age	Experience
1	Akshay	28	2
2	John	27	3
3	Harsh	26	1
4	Sara	28	5
5	Ritika	23	0
6	Harsh	26	2
7. Key SQL Concepts Used
Database Creation
Table Creation
Data Insertion
Filtering (WHERE)
Sorting (ORDER BY)
Aggregate Functions
COUNT()
SUM()
AVG()
MIN()
MAX()
Pattern Matching (LIKE)
GROUP BY
HAVING
Window Functions
RANK()
ROW_NUMBER()
ALTER TABLE
AUTO_INCREMENT
PRIMARY KEY
8. Project Outcome

This project successfully demonstrates the implementation of an Employee Management Database using SQL. It showcases essential SQL operations required in real-world data analytics and database administration, including data storage, querying, aggregation, ranking, filtering, and table modification.

Resume Description

Employee Management Database (SQL Project)

Designed and implemented an Employee Management Database using MySQL.
Performed data retrieval, filtering, sorting, aggregation, and ranking operations using SQL queries.
Utilized window functions (RANK, ROW_NUMBER), GROUP BY, HAVING, and aggregate functions for employee analysis.
Implemented primary key constraints and auto-increment functionality for efficient record management.
