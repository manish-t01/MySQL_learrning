-- practice questions.
-- Q. Write the Query to find avg marks in each city in ascending order.

-- Ans
select city, avg(marks) 
from student
group by city
order by avg(marks);

select city, avg(marks) 
from student
group by city
order by avg(marks) desc;