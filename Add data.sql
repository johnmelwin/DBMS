-- John paul Raj, John Melwin Richard
-- Database Homework part 2
-- Spring 2023
-- Section ISTE230
-- HW#03 Due Thursday

USE conman;

-- Task 1 – Add new data into contactInfo table 
INSERT INTO contactInfo(
contactID, firstName, middleInitial, lastName, email, url, birthday, notes)
VALUES (3, 'Eli', 'T', 'Wallowby', 'etwallowby@concor.com', 'www.concor.com/~wallowby', '1956-03-26' , 'All meetings must be scheduled through his assistant');

INSERT INTO contactInfo(
contactID, firstName, middleInitial, lastName, email, url, birthday, notes)
VALUES (4, 'Eve', 'C', 'Sampson ', 'esampson@concor.com', NULL, '1972-05-11' , 'Very helpful');

INSERT INTO contactInfo(
contactID, firstName, middleInitial, lastName, email, url, birthday, notes)
VALUES (5, 'Carson', 'B', 'Campbell', 'cbc232@mvch.org', NULL, '1955-01-05' , 'Wife: Lisa Kids: Lucas, Lucy, and Lucinda.');

INSERT INTO contactInfo(
contactID, firstName, middleInitial, lastName, email, url, birthday, notes)
VALUES (6, 'John Melwin', NULL, 'John Paul Raj', 'jj5603@rit.edu', 'johnmelwinrichard.com', '2000-03-18' , 'Does the assignments very good!');

SELECT * FROM contactInfo;

-- Task 2 – Add an attribute to the contactInfo table
ALTER TABLE contactInfo
ADD nickname VARCHAR(20) DEFAULT 'To be Determined';

DESC contactInfo; 

-- Task 3 – Add constraints to the contactInfo table 
ALTER TABLE contactInfo
	MODIFY COLUMN firstName VARCHAR(15) NOT NULL,
	MODIFY COLUMN lastname VARCHAR(25) NOT NULL;
    
-- CHANGE command can also be used to make an attribute not null.

DESC contactInfo;

-- Task 4 ‐ Update an existing record
UPDATE contactInfo
SET nickname = 'Dave'
WHERE contactID = 1;

DESC contactInfo;
SELECT * FROM contactInfo;

-- Task 5 ‐ Delete records
DELETE FROM Contactinfo
WHERE url = 'www.concor.com/~wallowby';

SELECT * FROM contactInfo;
