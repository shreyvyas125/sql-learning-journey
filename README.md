# sql-learning-journey
A daily log of my SQL learning journey, including concepts, notes, and practice queries. This repository contains hands-on SQL examples, exercises, and files as I progress from basics to advanced topics.
Welcome to my SQL Learning Journey!
This repository documents everything I learn in SQL from basics to advanced concepts, with daily notes, examples, and practice files.
Day 1 – SELECT Statement, DISTINCT & Expressions

Today I learned how to use SQL to retrieve data using the SELECT statement, apply expressions, and fetch unique values using DISTINCT.
# SELECT All Columns
SELECT * 
FROM employee_demographics; 


# SELECT Specific Columns + Expression
SELECT first_name,
       last_name,
       age,
       (age + 10) * 100
FROM employee_demographics;

# SELECT Single Column
SELECT age 
FROM employee_demographics;

# DISTINCT – Remove Duplicates
SELECT DISTINCT first_name,
                last_name,
                gender
FROM employee_demographics;

**I will update this repository daily as I learn new topics:

SELECT & DISTINCT ✔️

📘 Day 2 – SQL Learning Journey

The WHERE clause is used to filter records based on a given condition.
It comes after FROM and before any GROUP BY or ORDER BY.

Basic Syntax:

SELECT column1, column2
FROM table_name
WHERE condition;

🔍 Comparison Operators

= equal

!= or <> not equal

> greater than

< less than

>= greater than or equal

<= less than or equal

🔸 Logical Operators

AND – both conditions must be true

OR – at least one condition must be true

NOT – condition must be false


📘 Day 3 – SQL Learning Journey
GROUP BY & ORDER BY
-- ORDER BY is used to sort the result set in ascending (ASC) or descending (DESC) order.

SELECT column1, column2
FROM table_name
ORDER BY column_name ASC|DESC;

Example 

| id | name  | department | salary |
| -- | ----- | ---------- | ------ |
| 1  | Ravi  | IT         | 60000  |
| 2  | Amit  | HR         | 40000  |
| 3  | Neha  | IT         | 70000  |
| 4  | Pooja | HR         | 45000  |

Sort by salary (Ascending) 

SELECT name, salary
FROM employees
ORDER BY salary ASC;

Sort by salary (Descending)
SELECT name, salary
FROM employees
ORDER BY salary DESC;

Sort by multiple columns

👉 First sorts by department, then salary inside each department.

2️⃣ GROUP BY (Grouping Data)

GROUP BY is used to group rows that have the same values and is usually combined with aggregate functions.

👉 Common Aggregate Functions

| Function  | Meaning        |
| --------- | -------------- |
| `COUNT()` | Number of rows |
| `SUM()`   | Total          |
| `AVG()`   | Average        |
| `MAX()`   | Maximum        |
| `MIN()`   | Minimum        |

Syntax 
SELECT column, aggregate_function(column)
FROM table_name
GROUP BY column;

Example   
1: Count employees per department

SELECT department, COUNT(*) AS total_employees
FROM employees
GROUP BY department;

2: Average salary per department

SELECT department, AVG(salary) AS avg_salary
FROM employees
GROUP BY department;

3: Highest salary per department

SELECT department, MAX(salary) AS max_salary
FROM employees
GROUP BY department;

3️⃣ GROUP BY + ORDER BY
Example: Departments ordered by average salary

SELECT department, COUNT(*) AS emp_count
FROM employees
GROUP BY department
ORDER BY emp_count DESC;

📘 Day 4 – SQL Learning Journey
WHERE vs HAVING

| WHERE                          | HAVING                      |
| ------------------------------ | --------------------------- |
| Filters rows                   | Filters groups              |
| Used **before** GROUP BY       | Used **after** GROUP BY     |
| Cannot use aggregate functions | Can use aggregate functions |

SELECT department, COUNT(*) AS total
FROM employees
GROUP BY department
HAVING COUNT(*) > 2;

5️⃣ Execution Order
FROM
WHERE
GROUP BY
HAVING
SELECT
ORDER BY
LIMIT





