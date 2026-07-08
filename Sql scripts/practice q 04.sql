-- practice question.
-- Qs: In the student table :

   -- a. Change the name of column name" to "full_name".
   alter table students
   change name full_name varchar(50);
   
   -- b. Delete all the students who scored marks less than 80.
   delete from students
   where marks < 80;
   
   -- c. Delete the column for grades.
   alter table students
   drop column grade;
   
   SET SQL_SAFE_UPDATES = 0;
   SET SQL_SAFE_UPDATES = 1;
   
   select * from students;