# WHERE CLAUSE
select * 
from employee_salary;

select * 
from employee_salary
where first_name='Leslie';

select * 
from employee_salary
where salary >= 50000;

select * 
from employee_demographics
where gender = 'Female';

select * 
from employee_demographics
where gender != 'Female';

select * 
from employee_demographics
where birth_date > 1985-01-01;

select * 
from employee_demographics
where birth_date > 1985-01-01 and gender = 'male';

select * 
from employee_demographics
where birth_date > 1985-01-01 or gender = 'male';

select * 
from employee_demographics
where birth_date > 1985-01-01 or not gender = 'male';

select * 
from employee_demographics
where first_name LIKE '%A';

select * 
from employee_demographics
where first_name LIKE '%A%';

select * 
from employee_demographics
where first_name LIKE 'A%';

select * 
from employee_demographics
where first_name LIKE 'A__';

select * 
from employee_demographics
where first_name LIKE 'A___%';

select * 
from employee_demographics
where birth_date LIKE '1989%';

