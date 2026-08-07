create database onlinestore;
use onlinestore;

create table customers(
customer_id int primary key,
customer_name varchar(50),
city varchar (30),
email varchar (100),
);

create table product(
product_id int primary key,
product_name varchar (50),
category varchar(50),
price decimal(10,2),
);

create table orders(
order_id int primary key,
customer_id int,
order_date date,
total_amount decimal(10,2),
foreign key (customer_id)
references customers(customer_id)
);

INSERT INTO customers
VALUES
(1,'Amit Sharma','amit@gmail.com','Delhi'),
(2,'Priya Verma','priya@gmail.com','Lucknow'),
(3,'Rahul Singh','rahul@gmail.com','Kanpur'),
(4,'Neha Gupta','neha@gmail.com','Noida'),
(5,'Ankit Yadav','ankit@gmail.com','Agra');

select* from customers;


INSERT INTO product VALUES
(101,'Laptop','Electronics',55000),
(102,'Mobile','Electronics',25000),
(103,'Headphones','Accessories',2000),
(104,'Keyboard','Accessories',1500),
(105,'Mouse','Accessories',800);


INSERT INTO Orders
VALUES
(1001,1,'2025-08-01',55000),
(1002,2,'2025-08-02',2500),
(1003,3,'2025-08-03',1500),
(1004,4,'2025-08-04',700),
(1005,5,'2025-08-05',800);


select* from customers;
select* from product;
select* from orders;

update customers 
set city ='agra'
where customer_id=5;



select* from product
where price<1000;

select* from product
order by price desc;

select count(*) as average_price
from product


select top 3*
from orders

select max(price) 
from product;

select min (price)
from product;

select sum (total_amount)
from orders;


select customer_id,sum(total_amount)
as total_purchase
from orders group by customer_id;


select customer_id,sum(total_amount)
as total_purchase
from orders
group by customer_id
having sum (total_amount)< 5000;


select p.product_name,p.price
from product p;

select *
from customers
where customer_name like 'a%';

select *
from customers 
where city= 'delhi';


select*
from customers
order by customer_name;

select*
from product
where product_name='laptop'
and price>1000;

select*
from customers where city ='delhi'
or city='agra'


select 
c.customer_id,
c.customer_name,
p.product_name
from customers c
left join orders o
on c.customer_id=o.customer_id
left  join product p
on p.product_id  =p.product_id;


select *from orders;









