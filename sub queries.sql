-- SUBQUERIES 

SELECT *
FROM employee_demographics 
WHERE employee_id IN 
                 ( SELECT employee_id
                  FROM employee_salary
                 WHERE dept_id=1
                 )
;

select first_name , 
salary , 
(select avg(salary)
from employee_salary ) AS avg_salary
from employee_salary
;

select avg(max_age) 
from
(select gender,
 avg(age) AS avg_age,
 max(age)AS max_age,
 min(age) as min_age,
 count(age) as number_of_col
from employee_demographics
group by gender) AS agg_table
;
