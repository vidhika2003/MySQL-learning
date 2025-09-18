-- STRING FUNCTIONS

SELECT LENGTH('VIDHIKA');

SELECT first_name , length(first_name)
from employee_demographics
;

SELECT first_name , length(first_name)
from employee_demographics
order by length(first_name) desc
;

SELECT upper('vidhika');

SELECT lower('VIDHIKA');

SELECT first_name , upper(first_name)
from employee_demographics
;

SELECT trim('    VIDHIKA      ');
SELECT ltrim('    VIDHIKA      ');
SELECT rtrim('    VIDHIKA      ');

SELECT first_name ,
LEFT(first_name, 4),
RIGHT(first_name, 4),
substring(first_name , 3, 2),
birth_date,
substring(birth_date , 6 , 2) AS birth_month
from employee_demographics
;

SELECT first_name , REPLACE(first_name , 'a' , 'z')
from employee_demographics
;

select LOCATE('id', 'Vidhika');

SELECT first_name , LOCATE( 'an',first_name )
from employee_demographics
;

SELECT first_name , last_name ,
concat(first_name ,' ', Last_name) AS full_name
from employee_demographics
;