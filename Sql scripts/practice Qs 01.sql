create database Hyperlin;
use Hyperlin;

create table Employee(
id int primary key,
name varchar(50),
salary int check(salary between 1 and 100000000)
);

insert into Employee
(id, name, salary)
values
(1, "adam", 25000),
(2, "bob", 30000),
(3, "casey", 40000);

select * from Employee;

insert into Employee values (4, "Manish", -2000);