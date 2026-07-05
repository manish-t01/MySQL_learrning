use college;


create table Student(
Rollno int primary key,
Name varchar(50)
);

insert into Student (Rollno, Name)
values
(102, "Mohan"),
(103, "Ravi"),
(104, "Hari"),
(105, "Akash");

insert into Student value(106, "Mahesh");

select * from Student;