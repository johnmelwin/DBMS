-- John Paul Raj, John Melwin richard
-- HW# 08
-- 04-27-2023
-- Spring 2023
-- Professor: Habermas, James

USE book;

-- Q1. Count the number of publishers that are in each city, statecode combination
SELECT CONCAT(City, ", " , StateCode) AS "Location" , COUNT(Name) AS "Count"
FROM publisher
GROUP BY CONCAT(City, ", " , StateCode) 
ORDER BY COUNT(Name) ASC, Location DESC; 

-- Q2. For EVERY book in the book table, show the title, the count of the number of ratings, the minimum rating, the maximum rating, and the average rating rounded to the nearest penny. 
SELECT Title as 'title',COUNT(Rating) AS 'Total Ratings', MIN(Rating) AS 'Low', MAX(Rating) AS 'High', CAST(AVG(Rating) AS DECIMAL(4,2)) AS 'Average'
FROM Book LEFT JOIN bookreview
USING(ISBN)
GROUP BY title
ORDER BY COUNT(Rating) DESC, AVG(Rating) DESC, title DESC;

-- Q3. Show the publisher name and count of books published for those publishers that have published more than two books. 
SELECT Name AS "Publisher Name", COUNT(ISBN) AS "Book Count"
FROM Publisher LEFT JOIN book
USING(PublisherID)
GROUP BY Publisher.Name
HAVING COUNT(ISBN) > 2
ORDER BY COUNT(ISBN) DESC , Publisher.Name ASC;

-- Q4. Write a query that will select all of the book titles that have “bill” in their name and will display the title of the book, the length of the title, and the part of the title that follows “bill”
SELECT Title AS 'title', LENGTH(Title) AS 'Length',SUBSTR(Title,INSTR(Title,"bill")+LENGTH("bill")) AS 'After Bill'
FROM Book 
WHERE Title LIKE '%bill%';

-- Q5. Show a listing of used book titles that are available (used books are found in ownersbook)
SELECT DISTINCT book.title AS "title"
FROM book JOIN OWNERSBOOK USING(ISBN);
