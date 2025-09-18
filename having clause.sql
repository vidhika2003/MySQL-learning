-- HAVING CLAUSE

SELECT gender , avg(age)
FROM employee_demographics
GROUP BY gender
HAVING avg(age)> 40
;

SELECT occupation , AVG(salary)
FROM employee_salary
WHERE occupation LIKE '%manager%'
GROUP BY occupation
HAVING AVG(salary)> 75000
;


