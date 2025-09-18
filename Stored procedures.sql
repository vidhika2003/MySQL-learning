-- STORED PROCEDURES
CREATE PROCEDURE large_salary()
select *
from employee_salary
where salary >= 50000
;

CALL large_salary();


-- WHEN WE WANT TO WRITE MULTIPLE QUERIES IN PROCEDURE 
-- NOT THE WRITE WAY , IT IS CREATING A STORED PROCDURE WITH ONLY FIRST QUERY  AND SECOND QUERY IS GIVING THE OUTPUT

CREATE PROCEDURE large_salary_2()
select *
from employee_salary
where salary >= 50000;
select *
from employee_salary
where salary > 10000
;

DELIMITER $$
CREATE PROCEDURE large_salary_3()
BEGIN
	select *
	from employee_salary
	where salary >= 50000;
	select *
	from employee_salary
	where salary > 10000
	;
END $$
DELIMITER ;

CALL large_salary_3();

-- passing the paramenters

CREATE PROCEDURE large_salary_4(p_employee_id INT)
select salary
from employee_salary
where employee_id = p_employee_id
;

CALL large_salary_4(1);


-- string as input
CREATE PROCEDURE large_salary_5( p_first_name varchar(50))
select salary
from employee_salary
where first_name = p_first_name
;

CALL large_salary_5('Leslie');

