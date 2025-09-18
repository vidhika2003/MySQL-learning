-- WINDOW FUNCTION 

SELECT gender ,avg(salary) AS avg_salary
from employee_demographics as dem
JOIN employee_salary as sal
ON dem.employee_id = sal.employee_id
group by gender
;

SELECT  dem.first_name, dem.last_name, gender ,avg(salary) OVER(partition by gender)
from employee_demographics as dem
JOIN employee_salary as sal
ON dem.employee_id = sal.employee_id
;

SELECT  dem.first_name, dem.last_name, gender , salary,
sum(salary) OVER(partition by gender order by dem.employee_id) AS rolling_total
from employee_demographics as dem
JOIN employee_salary as sal
ON dem.employee_id = sal.employee_id
;

SELECT  dem.first_name, dem.last_name, gender , salary,
sum(salary) OVER(order by dem.employee_id) AS rolling_total
from employee_demographics as dem
JOIN employee_salary as sal
ON dem.employee_id = sal.employee_id
;

SELECT  dem.first_name, dem.last_name, gender , salary,
row_number() OVER(partition by gender order by salary desc) as row_num,
rank() OVER(partition by gender order by salary desc) as rank_num,
dense_rank() OVER(partition by gender order by salary desc) as dense_rank_num
from employee_demographics as dem
JOIN employee_salary as sal
ON dem.employee_id = sal.employee_id
;

