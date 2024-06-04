SET SESSION transaction ISOLATION LEVEL serializable;

START transaction;

SELECT * FROM Sakila.film where film_id in(13,14) for update;