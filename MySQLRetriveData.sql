-- John paul Raj, John Melwin Richard
-- Database Homework 
-- Spring 2023
-- Section ISTE230
-- HW#03 Due Thursday

USE world;

-- Part 1

-- Q1 Who was the head of state for 'United States'?  
SELECT headOfState FROM COUNTRY WHERE code = 'USA';

-- Q2 . Using a single statement, change where the head of state is listed as  Donald J. Trump to the name of the current President.
UPDATE Country
SET headOfState = 'Joseph R. Biden Jr'
WHERE code = 'USA';
SELECT headOfState FROM COUNTRY WHERE code = 'USA';

-- Q3 Show the name of the countries that do not have an independence year specified
SELECT name FROM country WHERE indepYear is NULL;

-- Q4 Show the name and continent of countries that have a population of 1 billion or more and a life expectancy between 70‐80.  
SELECT name,continent FROM country  WHERE population > 1000000000 AND lifeExpectancy BETWEEN 70 AND 80;

-- Q5 List the countries located in the continents of 'North America' and 'South America'
SELECT name FROM country WHERE continent IN ('North America', 'South America');



