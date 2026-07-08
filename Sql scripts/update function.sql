use college_01;

SET SQL_SAFE_UPDATES = 0;
SET SQL_SAFE_UPDATES = 1;

update student
set grade = "O"
where grade = "A";

update student 
set marks = 88
where rollno = 105;

update student 
set grade = "B" and marks = 86
where rollno = 105;

update student 
set marks = marks + 1;