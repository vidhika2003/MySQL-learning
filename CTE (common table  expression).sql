-- CTEs
with CTE_example as
(
select  gender, avg(salary) AVG_SALARY,
 max(salary) MAX_SALARY, min(salary) MIN_SALARY,
 count(salary) COUNT_SALARY
FROM employee_demographics  as dem
JOIN employee_salary AS sal
   on dem.employee_id = sal.employee_id
   group by gender
   )
SELECT AVG(AVG_SALARY) 
FROM CTE_example
;

-- JOINING TWO  CTEs or writing multiple CTE in one query
with CTE_example1 as
(
select  employee_id, first_name , birth_date
FROM employee_demographics 
where birth_date > '1985-01-01'
   ),
CTE_EXAMPLE2 AS
(
select  employee_id, SALARY 
FROM employee_salary
where salary > 50000
)
SELECT * 
FROM CTE_example1
JOIN CTE_EXAMPLE2 
  ON CTE_example1.employee_id = CTE_EXAMPLE2.employee_id
;

