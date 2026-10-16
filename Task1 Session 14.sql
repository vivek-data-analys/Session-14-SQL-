create database Ordersss ;
use Ordersss ; 

create table ordresss ( 
order_id  int ,
user_id  int, 
order_date date ,
total_amount int  ) ; 

insert into ordresss (order_id,user_id,order_date,total_amount) 
values 
(1, 101, '2023-02-14', 500),
(2, 102, '2024-05-21', 1200),
(3, 103, '2022-08-09', 750),
(4, 104, '2025-11-30', 2500),
(5, 105, '2021-01-17', 900),
(6, 101, '2026-03-25', 1500),
(7, 102, '2023-07-06', 650),
(8, 106, '2024-12-19', 1800),
(9, 107, '2022-04-28', 1100),
(10, 103, '2025-09-12', 2200);

select 
order_id,
user_id , 
order_date,
total_amount ,
row_number() over 
(
order by order_date desc 
) as sequential_series 
from ordresss ;