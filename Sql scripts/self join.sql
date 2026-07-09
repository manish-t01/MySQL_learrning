-- Self Join --

CREATE TABLE employee(
id INT PRIMARY KEY,
name VARCHAR(50),
manager_id INT
);

INSERT INTO employee (id, name, manager_id)
VALUES
(101, "adam", 103),
(102, "bob", 104),
(103, "casey", NULL),
(104, "donald", 103);

select * 
from employee as a 
join employee as b
on a.id = b.manager_id;

select a.name as manager_name, b.name
from employee as a 
join employee as b
on a.id = b.manager_id;

-- Union --
select name from employee
union
select name from employee;

-- Union All --
select name from employee
union all
select name from employee;