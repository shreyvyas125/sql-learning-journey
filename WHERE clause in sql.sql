-- where clause 

SELECT * FROM employee_salary
WHERE first_name='Leslie';

SELECT *
FROM employee_salary
WHERE salary >= 50000;

SELECT *
FROM employee_salary
WHERE salary > 50000;

SELECT *
FROM employee_salary
WHERE salary < 50000;

SELECT *
FROM employee_salary
WHERE salary <= 25000;

SELECT *
FROM employee_demographics 
WHERE gender ='Female' ;  # = is operator is equals to .

SELECT *
FROM employee_demographics 
WHERE gender !='Female' ; # != is operator of not equals to .

SELECT *
FROM employee_demographics 
WHERE age  >  34 ;

SELECT *
FROM employee_demographics 
WHERE age  <= 34 ;

# lets try with birth_dates and standard formate for aql is yyyy/mm/dd

SELECT *
FROM employee_demographics 
WHERE  birth_date >= '1987-01-01' ;

-- AND OR NOT are logical operator
SELECT *
FROM employee_demographics 
WHERE  birth_date >= '1987-01-01'
AND gender = 'Male' ;  # where we can add more condition or add more logic with AND operator 

SELECT *
FROM employee_demographics 
WHERE  birth_date >= '1987-01-01'
or NOt gender = 'Male';

SELECT *
FROM employee_demographics 
WHERE  (last_name='knope' AND age =44) or gender != 'female' ;
 # due pemdas weather we are filterig with last name but we add or with specific gender nt equals to female is showing other optput with mail ,

-- LIKE statement 
-- %  anything weather put before or after means anything not specific 
--and _ 

SELECT *
FROM employee_demographics 
WHERE first_name like 'jer%';

SELECT *
FROM employee_demographics 
WHERE first_name like '%jer%';

SELECT *
FROM employee_demographics 
WHERE first_name like '%a%';


SELECT *
FROM employee_demographics 
WHERE first_name like 'A__'; #__ means two character only after A 