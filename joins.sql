-- JOINS
-- INNER JOINS
SELECT * 
FROM employee_demographics
;

SELECT * 
FROM employee_salary
;

SELECT * 
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sal
ON dem.employee_id = sal.employee_id
;

SELECT dem.employee_id , age , occupation
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sal
ON dem.employee_id = sal.employee_id
;

-- OUTER JOINS

SELECT * 
FROM employee_demographics AS dem
LEFT JOIN employee_salary AS sal
ON dem.employee_id = sal.employee_id
;

-- RIGHT JOIN

SELECT * 
FROM employee_demographics AS dem
RIGHT JOIN employee_salary AS sal
 ON dem.employee_id = sal.employee_id
;

-- SELF JOIN
SELECT emp1.employee_id AS Secter_Santa_id , 
emp1.first_name AS Santa_first_name,
emp1.last_name AS Santa_last_name,
emp2.employee_id  AS gift_reciver_employee_id, 
emp2.first_name AS employee_first_name,
emp2.last_name AS employee_last_name
FROM employee_salary AS emp1
JOIN employee_salary AS emp2
ON emp1.employee_id  = emp2.employee_id + 1
;

-- JOINING MULTIPLE TABLES

SELECT *
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sal
ON dem.employee_id = sal.employee_id
 INNER JOIN parks_departments AS par
   ON sal.dept_id = par.department_id
;


