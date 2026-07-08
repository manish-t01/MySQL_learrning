use college_01;

-- learning having clause.
select city, count(name)
from student
group by city
having max(marks) > 90;

select * 
from student
where marks > 90;

select city 
from student
where grade = "A"
group by city
having max(marks) >= 93
order by city asc;