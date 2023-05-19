-- John Paul Raj, John Melwin richard
-- HW# 06
-- 03-30-2023
-- Spring 2023
-- Professor: Habermas, James

USE book;

-- Q1. SQL statement that will show the title for each book and its category description.
SELECT Title AS 'title',CatDescription AS 'catdescription' FROM Book 
INNER JOIN Category
ON Book.Category=Category.CatID
ORDER BY CatDescription DESC,Title ASC;
 
 -- Q2. Book titles and their ratings for all reviewers who do not work for a newspaper or any other news organization
 SELECT Name AS 'Name', Title AS 'Title', Rating AS 'Rating' FROM Book 
 INNER JOIN BookReview USING (ISBN)
 INNER JOIN Reviewer USING (ReviewerID)
 WHERE Reviewer.EmployedBy IS NULL;
 
--  Q3. The title and the lastname and firstname for the author(s) of the book
SELECT Title AS 'Title', LastName AS 'lastName', FirstName AS 'firstName' FROM Book 
INNER JOIN BookAuthor USING (ISBN)
INNER JOIN Author USING (AuthorID)
ORDER BY Title ASC, LastName ASC;

-- Q4. titles, author’s names, and prices for pre-owned books that are priced at $50.00 or below
SELECT title AS 'title',LastName AS 'lastName', FirstName AS 'firstName', price AS 'price'FROM Book
INNER JOIN BookAuthor USING (ISBN)
INNER JOIN Author USING (AuthorID)
INNER JOIN OwnersBook USING (ISBN)
WHERE price <= 50.00
ORDER BY price DESC, Title ASC;

-- Q5. titles of ALL books and if the book had a reviewer show the name of the reviewer(s). 
SELECT title AS 'title', Name AS 'name' FROM Book
 LEFT JOIN BookReview USING (ISBN)
 LEFT JOIN Reviewer USING (ReviewerID);
 
 -- Q5 Alternate Solution(without using FK)
-- SELECT book.title, reviewer.name
-- FROM book LEFT JOIN bookreview ON book.ISBN = bookreview.ISBN
-- LEFT JOIN reviewer ON bookreview.ReviewerID = reviewer.ReviewerID

-- Q6. subquery that will display the ISBN and title of book that have a category that starts with the letter ‘S’. 
SELECT ISBN AS 'isbn', Title AS 'title' FROM Book
WHERE EXISTS (SELECT * FROM Category WHERE Book.Category=Category.CatID AND
CatDescription LIKE 'S%');
