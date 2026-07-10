-- Practice Questions --

-- Find the max marks from the students of Delhi
   -- Step 1. Find the students of Delhi
   -- Step 2. Find their max marks using the sublist in step 1
 
-- Ans
SELECT MAX(marks)
FROM (

SELECT * 
FROM student_02
WHERE city = "Delhi"

) AS temp;

SELECT MAX(marks)
FROM student_02
WHERE city = 'Delhi';

SELECT MAX(marks)
FROM student_02
WHERE city = 'Mumbai';