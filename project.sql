--Create database book Book-Crossing Base

create database Book_Crossing_Base


--Create books table

create table books(
	isbn bigint primary key,
	title varchar (100),
	author varchar (100),
	year int,
	publisher varchar (100)
	);


--Create users table

create table users(
	user_id serial primary key,
	location  varchar(100),
	age numeric (10,2)
);


--Create ratings table

 create table ratings(
	user_id int references users (user_id),
	isbn bigint references books (isbn),
	rating int,
	primary key (user_id, isbn)
);


--Import data into tables

copy books (isbn, title, author, year, publisher)
from 'C:\sql project\books.csv'
csv header;

copy users (user_id, location, age)
from 'C:\sql project\users.csv'
csv header;


---could not import the data because of duplicates errors
copy ratings (user_id, isbn, rating)
from 'C:\sql project\ratings.csv'
csv header;


---making temporary table to import data safely without error

create table ratings_temp (
    user_id INT,
    isbn VARCHAR(20),
    rating INT
);


--import into temporary table

copy ratings_temp(user_id, isbn, rating)
from 'C:\sql project\ratings.csv'
csv header;


--we will transfer data from ratings_temp to ratings table (which was empty)

INSERT INTO ratings (user_id, isbn, rating)
SELECT DISTINCT 
    user_id,
    isbn::bigint,  -- cast varchar to bigint
    rating
FROM ratings_temp
on conflict (user_id, isbn) do nothing;


--now all three tables are ready

 select * from books
  select * from users
 select * from ratings


--1. Retrive isbn of book publisher known as 'HarperCollins'.
select isbn, publisher from books
where publisher = 'HarperCollins';


--2. Find books published after year 2000.
select * from books
where year > 2000;


--3. Find all users from USA.
select * from users
where location like '%USA';


--4. Find books published in year 2003 to 2004.
select * from books 
where year between 2003 and 2004 ;


--5. Count total users from London.
select count(*) from users
where location like 'London%';


--6. Retrive isbn of highly rated book.
select isbn, rating from ratings
order by rating desc


--7. Find users older than or equal to 50.
select * from users
where age >= 50;


--8. Find most latest published top 50 book by their isbn.
select isbn, year from books 
order by year desc limit 50;


--9. list all publisher listed in books table.
select distinct publisher from books ;


--10. Retrive youngest users below 30.
select * from users
where age < 30
order by age;


--Advance questions:-
--11. Retrive publisher with average rating.
select books.publisher, avg(ratings.rating) as avg_rating
from books
join ratings
on books.isbn=ratings.isbn
group by books.publisher;


--12. Find the average rating of publisher known as 'Penguiun'
select publisher, avg(rating)
from books
join ratings on books.isbn=ratings.isbn
where publisher = 'Penguin'
group by books.publisher;


--13. Find the number of book published by each publisher.
select distinct publisher, count(title)
from books
group by publisher;


--14. Find publisher having atleast 330 books published.
select distinct publisher, count(title) < 330
from books
group by publisher;


--15. Most frequent users from which location.
select location, count(location)
from users
group by location
order by location desc limit 1;


--16. Most highly rated books in penguin.
select books.publisher, ratings.isbn, ratings.rating
from books
join ratings on books.isbn = ratings.isbn
where publisher = 'Penguin'
order by rating desc;


--17. Retrive total number of users by each location and by each publisher.
select distinct users.location, count (users.location), books.publisher
from users
join ratings on ratings.user_id = users.user_id
join books on books.isbn = ratings.isbn
group by publisher, location;


--18. Location from where full rating books bought in the highest number
select distinct users.location, count(ratings.rating = 10)
from users
join ratings on users.user_id = ratings.user_id
group by location
order by count desc limit 1;


--19. The publishers which has rating 0 the most.
select distinct books.publisher, count (ratings.rating = 0)
from books
join ratings on books.isbn = ratings.isbn
group by publisher
order by count desc limit 1


--20 Subtract the total number of books published by 'Random House' to 'Penguin'.
select
(select count(publisher)
from books
where publisher = 'Penguin')-

(select count(publisher)
from books
where publisher = 'Random House')






