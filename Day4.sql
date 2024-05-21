USE SAKILA;

-- joining multiple tables

select f.title,l1.name as language ,l2.name as original_language
from film f
join language l1
on f.language_id = l1.language_id
join language l2
on f.original_language_id = l2.language_id;

select *
from film f
join language l1
on f.language_id = l1.language_id;

select f1.title ,f2.title
from film f1
join film f2
on((f2.release_year between f1.release_year -2 and f1.release_year + 2) AND  f2.rental_rate > f1.rental_rate);

select f1.title ,f2.title
from film f1
join film f2
on((f2.release_year between f1.release_year -2 and f1.release_year + 2))
where  f2.rental_rate > f1.rental_rate;

  select count(*)
from film f1
join film f2
on((f2.release_year between f1.release_year -2 and f1.release_year + 2))
where  f2.rental_rate > f1.rental_rate;

use sakila;
select count(*) from film;
select count(*) from language;

select count(*)
from film
cross join language;

select * from film;

select * from film;

select * from film;

-- cross join

select *
from film
cross join language;

select * 
from film f
join film_actor a
on f.film_id = a.film_id;

-- working with using keyword

select * 
from film f
join film_actor a
using (film_id);

select count(*) 
from film f
join film_actor a
using (film_id);

select * 
from film f
join film_actor fa
on f.film_id = fa.film_id AND f.XYZ = fa.XYZ;

select * 
from film f
join film_actor fa
USING (film_id,XYZ);

-- Natural 	Join

select * 
from film f
natural join film_actor fa;

select count(*) 
from film
natural join film_actor;

select * from  film;

select * from film_actor;

-- learned difference betweeen ON AND WHERE

select title 
from film
UNION 
SELECT description
from film
UNION 
select language_id
from film;


select title 
from film
UNION ALL
SELECT description
from film
UNION ALL
select language_id
from film;

select title, film_id from film
union
select name, language_id from language
union
select first_name, actor_id from actor;

-- Aggregates queries




