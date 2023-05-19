-- John paul Raj, John Melwin Richard
-- Database Practice Exercise 4
-- Spring 2023
-- Section ISTE230
-- PE#04 Due Monday

USE sakilav1;

-- Q1
SELECT title AS 'Title of Film', length AS 'Length of Film', RIGHT(description,55)  AS 'Part of Description (Right Side)' FROM film
    WHERE length <=100 AND description LIKE '%fun%';

-- Q2  
SELECT title AS 'Title of Film', length AS 'Length of Film', RIGHT(description,60)  AS 'Part of Description (Right Side)' FROM film
    WHERE description LIKE '%Database%' OR description LIKE '%California%';
    
-- Q3
SELECT title AS 'Title', length AS 'Length of Film', rating AS 'Rating' FROM film
    WHERE length BETWEEN 120 AND 140 AND rating = 'G'; 
    
-- Q4
SELECT title AS 'Movie Title', length AS 'Length of Film', rating AS 'Rating' FROM film
    WHERE title LIKE '%river%' AND rating = ('R' OR 'PG-13');
    
-- Q5
SELECT title AS 'Title', length AS 'Film Length', release_year AS 'Release Year', rating AS 'Film Rating' FROM film
    WHERE release_year>2012 AND length >=160 AND rating IN ('G', 'PG-13');

-- Q6
SELECT title AS 'Film Title', replacement_cost AS 'Replacement cost', rating AS 'Film Rating' FROM film
     WHERE replacement_cost=19.99 AND title NOT LIKE '_a%'
     ORDER BY rating DESC;
     
-- Q7
SELECT title AS 'Title', LEFT(description,55) AS 'Partial Description (LEFT)' FROM film
     WHERE description LIKE '%Frisbee%' AND description LIKE '%Fanciful%';

-- Q8
SELECT title AS 'Title of Film', rating AS 'Rating', release_year AS 'Film Release Year' FROM film
     WHERE (rating='G' AND release_year=2006) OR (rating='PG' AND release_year=2010);