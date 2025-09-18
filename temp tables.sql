-- TEMPORARY TABLES
CREATE TEMPORARY TABLE temp_table(
first_name varchar(50),
last_name varchar(50),
favourite_movie varchar(50)
)
;

INSERT INTO temp_table VALUES('Vidhika' , 'Garg' , 'Family Man');

SELECT *
FROM temp_table;

-- OR USE THIS

CREATE TEMPORARY TABLE salary_over_50k
(
SELECT * FROM 
employee_salary
WHERE salary > 50000
)
;  

SELECT *
FROM salary_over_50k;


