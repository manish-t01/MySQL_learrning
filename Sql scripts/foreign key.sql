-- learning foreign key.

use college_01;

create table dept(
id int primary key,
name varchar(50)
);

insert into dept 
values
(101, "science"),
(102, "hindi"),
(103, "history");

update dept
set id = 100
where id = 103;


create table teachers(
id int primary key,
name varchar(50),
dept_id int,
foreign key(dept_id) references dept(id)
on update cascade
on delete cascade
);

insert into teachers
values 
(101, "manish", 101),
(102, "phangs", 102),
(103, "Senn", 103);

select* from teachers;
