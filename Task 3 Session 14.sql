create database moviess ; 
use moviess ; 

create table movies ( 
movie_id int primary key  ,
genartion varchar  (100) not null , 
movie_rating decimal (2,1) );

insert into movies (movie_id,genartion,movie_rating) 
values 
(1, 'Action', 4.5),
(2, 'Comedy', 3.2),
(3, 'Drama', 4.0),
(4, 'Horror', 2.8),
(5, 'Romance', 3.7),
(6, 'Thriller', 4.2),
(7, 'Sci-Fi', 4.8),
(8, 'Adventure', 3.5),
(9, 'Animation', 4.1),
(10, 'Fantasy', 2.2),
(11, 'Action', 1.2),
(12, 'Comedy', 4.6),
(13, 'Drama', 3.9),
(14, 'Horror', 1.8),
(15, 'Romance', 5.0);


select * from movies ; 

select 
genartion , 
movie_rating ,
dense_rank() over 
( 
order by movie_rating desc 
) as highest_rating 
from movies ; 