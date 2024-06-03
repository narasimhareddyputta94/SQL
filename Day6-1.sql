SELECT @@autocommit;

set autocommit = 0;

use sakila;

select * from film
where film_id =10;

select * from film
where film_id =11;

update film set title = 'Jawan'
WHERE FILM_ID =10;

update film set title = 'jailer'
where film_id = 11; 

commit;

-- Retrieve All Movies
SELECT * FROM film;

-- List All Actors
SELECT * FROM actor;

-- Find All Movies Released in 2006
SELECT title, release_year 
FROM film 
WHERE release_year = 2006;

-- Find Movies with a Rating of 'PG' or 'G'
SELECT title, rating 
FROM film 
WHERE rating IN ('PG', 'G');

-- List All Customers from Canada
SELECT first_name, last_name 
FROM customer 
JOIN address ON customer.address_id = address.address_id
JOIN city ON address.city_id = city.city_id
JOIN country ON city.country_id = country.country_id
WHERE country.country = 'Canada';

-- Count the Number of Movies in Each Category
SELECT c.name AS category, COUNT(f.film_id) AS number_of_films
FROM film f
JOIN film_category fc ON f.film_id = fc.film_id
JOIN category c ON fc.category_id = c.category_id
GROUP BY c.name;

-- Find the Top 10 Most Frequently Rented Movies
SELECT f.title, COUNT(r.rental_id) AS rental_count
FROM rental r
JOIN inventory i ON r.inventory_id = i.inventory_id
JOIN film f ON i.film_id = f.film_id
GROUP BY f.title
ORDER BY rental_count DESC
LIMIT 10;

-- Retrieve All Movies Starring a Specific Actor
SELECT f.title
FROM film f
JOIN film_actor fa ON f.film_id = fa.film_id
JOIN actor a ON fa.actor_id = a.actor_id
WHERE a.first_name = 'JOHNNY' AND a.last_name = 'LOLLAR';

-- List All Movies and Their Categories
SELECT f.title, c.name AS category
FROM film f
JOIN film_category fc ON f.film_id = fc.film_id
JOIN category c ON fc.category_id = c.category_id;

-- Find All Movies with a Description Containing 'Action'
SELECT title, description 
FROM film 
WHERE description LIKE '%Action%';

-- Calculate the Total Revenue from Rentals
SELECT SUM(amount) AS total_revenue
FROM payment;

-- Find the Most Active Customer by Rental Count
SELECT c.first_name, c.last_name, COUNT(r.rental_id) AS rental_count
FROM customer c
JOIN rental r ON c.customer_id = r.customer_id
GROUP BY c.first_name, c.last_name
ORDER BY rental_count DESC
LIMIT 1;

-- Retrieve the Average Rental Duration for Each Film
SELECT f.title, AVG(DATEDIFF(r.return_date, r.rental_date)) AS average_rental_duration
FROM film f
JOIN inventory i ON f.film_id = i.film_id
JOIN rental r ON i.inventory_id = r.inventory_id
GROUP BY f.title;

-- List All Stores and the Number of Staff Members They Have
SELECT s.store_id, COUNT(st.staff_id) AS number_of_staff
FROM store s
JOIN staff st ON s.store_id = st.store_id
GROUP BY s.store_id;

-- Find the Customer Who Spent the Most Money
SELECT c.first_name, c.last_name, SUM(p.amount) AS total_spent
FROM customer c
JOIN payment p ON c.customer_id = p.customer_id
GROUP BY c.first_name, c.last_name
ORDER BY total_spent DESC
LIMIT 1;

SHOW variables LIKE "transaction_isolation";

set session transaction isolation level READ UNCOMMITtED;

SET autocommit =0;

select @@autocommit;

select * from film
where film_id = 10;

update film
set title = "OMG-2"
where film_id = 10;


