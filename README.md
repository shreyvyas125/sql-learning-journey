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


