-- Sub queries --

USE college;

RENAME TABLE student TO student_01;

SELECT * FROM student_02;

CREATE TABLE student_02 (
rollno INT PRIMARY KEY,
name VARCHAR(50),
marks INT NOT NULL,
grade VARCHAR(1),
city VARCHAR(20)
);

INSERT INTO student_02
(rollno, name, marks, grade, city)
VALUES
(101, "anil", 78, "C", "Pune"),
(102, "bhumika", 93, "A", "Mumbai"),
(103, "chetan", 85, "B", "Mumbai"),
(104, "dhruv", 96, "A", "Delhi"),
(105, "emanuel", 92, "F", "Delhi"),
(106, "farah", 82, "B", "Delhi");

-- Static way --
select avg(marks)
from student_02;

select name, marks 
from student_02
where marks > 87.6667;

-- Dinemic way using sub quries --
select name, marks 
from student_02
where marks > (select avg(marks)from student_02);
