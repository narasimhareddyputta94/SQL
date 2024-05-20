USE SAKILA;

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

