-- alter commands.

alter table student
add column age int not null default 19;

alter table student
change age stu_age int;

alter table student
drop column stu_age;

alter table student 
rename to students;

select * from student;