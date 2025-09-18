-- GROUP BY

SELECT * 
FROM employee_demographics;

SELECT gender
FROM employee_demographics
GROUP BY gender
;

SELECT gender , AVG(age) , MAX(age) , MIN(age) , COUNT(age)        # aggregate function
FROM employee_demographics
GROUP BY gender 
;

-- ORDER BY
SELECT *
FROM employee_demographics
ORDER BY age asc
;

SELECT *
FROM employee_demographics
ORDER BY age desc
;

SELECT *
FROM employee_demographics
ORDER BY gender , age 
;

SELECT *
FROM employee_demographics
ORDER BY 5,4
;




