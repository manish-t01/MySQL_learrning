-- Joins in Sql. --

create database college;
use college;

create table student(
id int primary key,
name varchar(50)
);

insert into student 
(id, name )
values 
(101, "adam"),
(102, "bob"),
(103, "casey");

create table course(
id int primary key,
course varchar(50)
);

INSERT INTO course (id, course)
VALUES
(102, "english"),
(105, "math"),
(103, "science"),
(107, "computer science");

select * from student;
select * from course;

-- inner join --
select * 
from student 
inner join course
on student.id = course.id;

-- Using alias --
select * 
from student as s 
inner join course as c 
on s.id = c.id;

-- left jion --
select *
from student as a
left join course as b
on a.id = b.id;

-- Right jion --
select *
from student as a
right join course as b
on a.id = b.id;

-- Full Join --
select *
from student as a
left join course as b
on a.id = b.id
union
select *
from student as a
right join course as b
on a.id = b.id;

-- left exclusive join --
select *
from student as a
left join course as b
on a.id = b.id
where b.id is null;

-- Right exclusive join --
select *
from student as a
Right join course as b
on a.id = b.id
where a.id is null;

-- Full Exclusive Join --
select *
from student as a
left join course as b
on a.id = b.id
where b.id is null
union
select *
from student as a
right join course as b
on a.id = b.id
where a.id is null;

