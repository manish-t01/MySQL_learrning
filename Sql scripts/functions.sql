-- Aggregate functions.

use college_01;

select marks from student;
select max(marks) from student;
select min(marks) from student;
select avg(marks) from student;
select count(name) from student;

select city, count(name) 
from student
group by city;

select city, name, count(name) 
from student
group by city, name;

INSERT INTO student
(rollno, name, marks, grade, city)
VALUES
(110, "chetan", 87, "B", "Mumbai");

select city, avg(marks) 
from student
group by city;