use college_01;

-- Practice Question 3.
-- For the given table, find the total payment according to each payment method.

-- Ans
create table payments_01(
customer_id int primary key,
customer varchar(50),
mode varchar(30),
city varchar(30)
);

INSERT INTO payments_01
(customer_id, customer, mode, city)
VALUES
(101, 'Olivia Barrett', 'Netbanking', 'Portland'),
(102, 'Ethan Sinclair', 'Credit Card', 'Miami'),
(103, 'Maya Hernandez', 'Credit Card', 'Seattle'),
(104, 'Liam Donovan', 'Netbanking', 'Denver'),
(105, 'Sophia Nguyen', 'Credit Card', 'New Orleans'),
(106, 'Caleb Foster', 'Debit Card', 'Minneapolis'),
(107, 'Ava Patel', 'Debit Card', 'Phoenix'),
(108, 'Lucas Carter', 'Netbanking', 'Boston'),
(109, 'Isabella Martinez', 'Netbanking', 'Nashville'),
(110, 'Jackson Brooks', 'Credit Card', 'Boston');

select mode, count(mode)
from payments_01
group by mode;

select mode, count(customer)
from payments_01
group by mode;