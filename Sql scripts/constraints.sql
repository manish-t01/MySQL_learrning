use college;

create table temp1(
id int,
name varchar(50) not null,
age int not null check( age between 1 and 210),
primary key ( id, name )
);

insert into temp1 
(id, name, age)
values
(1, "ram", 10),
(1, "shyam", 12),
(2, "shyam", 11);

insert into temp1 
(id, name, age)
values
(3, "manish", 10),
(4, "manish", 12);

insert into temp1 
(id, name, age)
values
(5, "mohan", 10),
(45, "mohan", 12);

-- it will give duplicate error.
insert into temp1 
(id, name, age)
values
(10, "ravi", 10),
(10, "ravi", 12);

select * from temp1;

create table emp1(
id int primary key,
salary int default 30000
);

insert into emp1 (id) values (1011); -- here it will add by default 30000 salary.
insert into emp1 (id, salary) values (1012, 45000);

select * from emp1;