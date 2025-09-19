use college;
drop table student;
create table student (
rollno int primary key,
name varchar(50),
marks int not null,
grade varchar(1),
city varchar(20)
);
insert into student 
(rollno,name,marks,grade,city )
values
(101,"anil",78,"C","Pune"),
(102,"bhumika",93,"A","Mumbai"),
(103,"chetan",85,"B","Mumbai"),
(104,"dhruv",96,"A","Delhi"),
(105,"emanuel",12,"F","Delhi"),
(106,"Farah",82,"B","Delhi");
select name , marks from student;
select * from student;
select distinct city from student;
select * from student where marks>80;
select * from student where city = "Mumbai";
select * from student where marks>80 and city = "Mumbai";
select * from student where marks + 10 > 100;
select * from student where marks = 93;
select * from student where marks > 90;
select * from student where marks > 80 and city = "Mumbai";
select * from student where marks > 80 or city = "Mumbai";
select * from student where marks between 80 and 90;
select * from student where city in ("Delhi","Mumbai");
select * from student where city not in ("Delhi","Mumbai");
select * from student where city in ("Gurugram","Noida");    
select * from student where marks in (93);
select * from student where marks not in (80);
select * from student limit 3;
select rollno,name,city from student limit 3;
select * from student order by marks asc;
select * from student order by marks desc limit 3;
select * from student;
select * from student order by city asc;
select marks from student;
select max(marks) from student;
select count(marks) from student;
select avg(marks) from student;
select min(marks) from student;
select sum(marks) from student;
select city from student group by city;
select city , count(name) from student group by city;
select city ,name , count(name) from student group by city,name;
select city , avg(marks) from student group by city;
select city, avg (marks) from student group by  city order by avg(marks) asc;
select grade , count(name) from student group by grade;
select city , count(name) from student group by city having max(marks)>90;
set sql_safe_updates = 0;
update student set grade="O" where grade="A";
update student set marks=82 where name="emanuel";
update student set grade="B" where marks between 80 and 90;
update student set marks=marks+1;
update student set marks=12 where name="emanuel";
delete from student where marks=12;
select * from student;
create table dept (
id int primary key,
course varchar(30)
); 
drop table teacher;
create table teacher(
id int primary key,
name varchar(50),
dept_id int,
foreign key (dept_id) references dept(id)
on update cascade
on delete cascade
);
insert into dept
(id,course)
values
(101,"Science"),
(102,"English"),
(103,"Hindi");
insert into teacher
(id,name,dept_id)
values
(101,"Adam",101),
(102,"Bob",103),
(103,"Casey",102),
(104,"Donald",103);
update teacher set dept_id =102 where id =104;
select * from teacher;
update dept set id =105 where id =102;
select * from dept;
select * from student;
alter table student
add column age int;
alter table student
drop column age ;
alter table student
add column age int;
use college;
set sql_safe_updates = 0;
UPDATE student SET age = 20 WHERE rollno = 101;
UPDATE student SET age = 21 WHERE rollno = 102;
UPDATE student SET age = 19 WHERE rollno = 103;
UPDATE student SET age = 22 WHERE rollno = 104;
UPDATE student SET age = 18 WHERE rollno = 105;
UPDATE student SET age = 20 WHERE rollno = 106;
select * from student;
use college;
alter table student
change column name full_name varchar(20);
set sql_safe_updates=0;
delete from student
where marks<90;
alter table student
drop column age;
drop table student;
create table student(
id int primary key,name varchar(25)
);
insert into student
(id,name)
values
(101,'Adam'),
(102,'Bob'),
(103,'Casey');
select * from student;
create table course(
student_id int primary key,course varchar(25)
);
insert into course
(student_id,course)
values
(102,'English'),
(105,'Math'),
(103,'Science'),
(107,'Computer Science');
select * from course;
select * from student 
inner join course
on student.id = course.student_id;
select * from student as s
left join course as c
on s.id = c.student_id;
select * from student as s
right join course as c
on s.id = c.student_id;
select * from student as s
left join course as c
on s.id = c.student_id
UNION
select * from student as s
right join course as c
on s.id = c.student_id;
select * from student as s
LEFT join course as c
on s.id = c.student_id
where c.student_id IS NULL;
select * from student as s
RIGHT join course as c
on s.id = c.student_id
where s.id IS NULL;
select * from student as s
LEFT join course as c
on s.id = c.student_id
where c.student_id IS NULL
UNION
select * from student as s
RIGHT join course as c
on s.id = c.student_id
where s.id IS NULL;
use college;
create table employee( 
id int primary key,
name varchar(20),
 manager_id varchar(20)
 );
 alter table employee
 modify manager_id int ;
 insert into employee
 (id, name, manager_id)
 values
 (101,'Adam',103),
 (102,'Bob',104),
  (103,'Casey',null),
   (104,'Doland',103);
select * from employee;
select * 
from employee as a
join employee as b
where a.id = b.manager_id;
select a.name as manager_name,b.name
from employee as a
join employee as b
where a.id = b.manager_id;
select a.name as 'Manager name',b.name 
from employee as a
join employee as b
where a.id = b.manager_id;
select name from employee
union
select name from employee;
select name from employee
union all
select name from employee;
select * from student;
select avg(marks) 
from student;
select name, marks 
from student 
where marks > (select avg(marks) from student);
select name,rollno 
from student
where rollno%2=0;
select name,rollno 
from student
where rollno in (
select rollno from student where rollno%2=0);
use college;
describe student;
select now();