-- Practice Question --

-- Static way --
select rollno 
from student_02
where rollno % 2 = 0;

select rollno, name, marks
from student_02
where rollno in (102, 104, 106);

-- Dinemic way using sub quries --
select rollno, name, marks
from student_02
where rollno in (

select rollno 
from student_02
where rollno % 2 = 0

);