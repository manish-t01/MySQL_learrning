create database college;
use college;

CREATE TABLE Student (
    Id INT PRIMARY KEY,
    Name VARCHAR(50),
    Age INT NOT NULL
);

insert into Student values (1, "Manish", 21);
insert into Student values (2,"Vid", 22);
 
select * from Student;

create database if not exists college; -- gives warning instead of error.
drop database if exists Company; -- gives warning instead of error.

show databases;
show tables;