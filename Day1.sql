use sakila;
DROP TABLE students;
DROP TABLE batches;
CREATE TABLE students(
	id INT auto_increment,
	firstName VARCHAR(50) NOT NULL,
	lastName VARCHAR(50) NOT NULL,
	email VARCHAR(100) NOT NULL,
	dateOfBirth DATE NOT NULL,
	enrollementDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	psp decimal(3,2) CHECK (psp BETWEEN 0.00 AND 100.00),
	batchId INT,
	isActive BOOLEAN DEFAULT TRUE,
	primary key(id)
);  

create table batches(
	batch_id INT PRIMARY KEY ,
    batch_Name VARCHAR(50) NOT NULL
);

INSERT INTO batches(batch_id, batch_Name) VALUES
(1,"BATCH A"),
(2,"BATCH B"),
(3,"BATCH C"); 

DROP TABLE students;

CREATE TABLE students(
	student_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    batch_id INT,
    FOREIGN KEY (batch_id) REFERENCES batches(batch_id)
);

INSERT INTO students (first_name,last_name,batch_id) 
VALUES
('MUKUL1','KUMAR1',1),
('MUKUL2','KUMAR2',2),
('MUKUL3','KUMAR3',1),
('MUKUL4','KUMAR4',3),
('MUKUL5','KUMAR5',1),
('MUKUL6','KUMAR6',2),
('MUKUL7','KUMAR7',1),
('MUKUL8','KUMAR8',3);

DELETE FROM batches WHERE batch_id = 1;

UPDATE batches SET batch_id = 4 WHERE batch_id = 2;

ALTER TABLE students
DROP FOREIGN KEY students_ibfk_1,
ADD FOREIGN KEY (batch_id) references batches(batch_id) on delete cascade on update cascade ;
    
SHOW CREATE TABLE students;


select * from film;

select title , description , release_year from film;

select title as film_name ,description as summary , release_year as launched_for_viewers from film;

select title As film_name from film;

select * from film;

select rating from film;

select distinct rating from film;

select distinct rating , release_year from film;

select "hello world";

select title,"Hello world","good movie" from film;

select title ,ROUND(length/60) as length_in_hours from film;

select title, length(title)
from film;

select title, upper(title)
from film;

select title, length(title), description, upper(title), lower(description)
from film;

select ltrim("   hello");
select ltrim("   hel  lo     ");
select trim("   hel  lo     ");

select left("delhi",3);
select right("delhi",3);
select substring("delhi",2,3);

select title 
from film
where locate ('king',title)!=0;

select title,round(rental_rate)
from film;

select title,rental_rate,round(rental_rate)
from film;

select title , rental_rate, round(rental_rate,1)
from film;

select truncate(101.505001,2);

select round(101.505,2);

select ceiling(4.12);

select floor(4.12);

select abs(4.91);

select abs(-4.91);

select rand();

select * from film
where rating='PG-13';

use sakila;

select rating, release_year from film
where rating = 'PG-13';

SELECT DISTINCT rating,release_year from film
where rating = 'PG-13';

select * from film;
 
SELECT * from film
where rating = 'PG-13' AND release_year = 2006;

select * from film 
where rating ='PG-13' OR rating = 'G';

select * from film
where rating = 'PG-13' AND length<=120;

select * from film
where NOT rating ='PG-13' AND NOT rating = 'PG';

SELECT * FROM film
where (rating = 'PG-13' OR release_year = 2006) AND (rental_rate = 0.99);

 select * from film
 where rating IN('PG-13','G','R');
 
 SELECT * FROM film 
 where length between 20 AND 140;
 
 select * from film
 where title LIKE 'Academy%';
 
 select * from film
 where title LIKE '%love%';
 
  select * from film
 where title LIKE '%LOVE%';
 
 SELECT * FROM FILM
 WHERE TITLE LIKE 'love';
 
  SELECT * FROM FILM
 WHERE TITLE LIKE '%lov_';
 
 SELECT * FROM FILM
 WHERE TITLE LIKE 'love%';
 
 SELECT * FROM FILM
 WHERE TITLE LIKE 'lov_';
 
SELECT NULL = NULL;
SELECT 2 = 2;

SELECT * FROM FILM
WHERE TITLE IS NULL;


 SELECT * FROM FILM
WHERE TITLE IS NOT NULL;

SELECT * FROM FILM
WHERE (RENTAL_DURATION != 6 AND RENTAL_DURATION IS NOT NULL);

SELECT * FROM FILM;

SELECT * FROM sql_store.customers;

SELECT * FROM FILM
ORDER BY TITLE;

SELECT * FROM FILM
ORDER BY TITLE DESC;

SELECT * FROM FILM
ORDER BY LENGTH;

SELECT * FROM FILM
ORDER BY LENGTH DESC;

SELECT * FROM FILM
ORDER BY LENGTH DESC ,TITLE ;

