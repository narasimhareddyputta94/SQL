USE SAKILA;

-- learning aggregates

SELECT * FROM FILM;

SELECT COUNT(*)
FROM FILM;

SELECT sum(language_id*2.5)
from film;

select count(original_language_id)
from film;

-- it wont work

select count(original_language_id,name)
from film;

select * from silm;

select * from film_actor;

select count(title)
from film;

select 1;
select 1000;

select 1
from film;

select count(1)
from film;

select count("hello")
from film;

select count(title),sum(language_id)
from film;

select * from film;

select avg(length)
from film;

SELECT MIN(LENGTH)
FROM FILM;

SELECT MAX(LENGTH)
FROM FILM;

SELECT SUM(REPLACEMENT_COST)
FROM FILM;

SELECT AVG(LENGTH),
MIN(LENGTH),
MAX(LENGTH),
SUM(REPLACEMENT_COST)
FROM FILM;

SELECT SUM(P.AMOUNT) 
FROM CUSTOMER C
join PAYMENT P
ON C.CUSTOMER_ID = P.CUSTOMER_ID
WHERE C.CUSTOMER_ID = 1;

SELECT SUM(P.AMOUNT)
FROM CUSTOMER C
JOIN PAYMENT P
ON C.CUSTOMER_ID = P.CUSTOMER_ID
WHERE C.CUSTOMER_ID<10;

SELECT C.CUSTOMER_ID,C.FIRST_NAME
FROM CUSTOMER C
JOIN PAYMENT P
ON C.CUSTOMER_ID = P.CUSTOMER_ID
GROUP BY C.CUSTOMER_ID;

SELECT C.CUSTOMER_ID,C.FIRST_NAME,COUNT(*)
FROM CUSTOMER C
JOIN PAYMENT P
ON C.CUSTOMER_ID = P.CUSTOMER_ID
GROUP BY C.CUSTOMER_ID;

SELECT C.CUSTOMER_ID,C.FIRST_NAME,SUM(P.AMOUNT),COUNT(*)
FROM CUSTOMER C
JOIN PAYMENT P
ON C.CUSTOMER_ID = P.CUSTOMER_ID
GROUP BY C.CUSTOMER_ID;

SELECT * FROM FILM;

