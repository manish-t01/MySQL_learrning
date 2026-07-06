create database college_01;
use college_01;

create table if not exists student(
rollno int primary key,
name varchar(50),
marks int not null,
grade varchar(1),
city varchar(30)
);

INSERT INTO student
(rollno, name, marks, grade, city)
VALUES
(101, "anil", 78, "C", "Pune"),
(102, "bhumika", 93, "A", "Mumbai"),
(103, "chetan", 85, "B", "Mumbai"),
(104, "dhruv", 96, "A", "Delhi"),
(105, "emanuel", 12, "F", "Delhi"),
(106, "farah", 82, "B", "Delhi");

select * from student;
select name, marks from student;
select city from student;
select distinct city from student;

-- where clause and operators.
select * from student
where marks > 80;

select*from Student
where city = "Delhi";

select*from Student
where city = "Delhi" and marks > 80;

select * from student
where marks + 10 > 100;

select*from Student
where city = "Mumbai" or marks > 90;

-- limit clause.
select * from student limit 3;

select * from student
where marks > 75
limit 3;

select * from student 
order by marks asc;

select * from student 
order by marks desc
limit 3;

select * from student 
order by city asc;