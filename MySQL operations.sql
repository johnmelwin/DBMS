-- John Paul Raj, John Melwin richard
-- Spring 2023,
-- Homework #5

USE jobs;

-- 1.  Write a SQL statement that will UNION the following two queries together using the UNION keyword:
-- a. Show the companyname, division, and listing for those interviews where a listing was posted (indicated by a ‘y’).
-- b. Show the companyname, division, and listing for those interviews where a listing was not posted (indicated by a ‘n’). 
SELECT companyname, division, listing FROM interview
WHERE listing = 'n'
UNION
SELECT companyname, division, listing FROM interview
WHERE listing = 'y';

-- 2. Write a SQL INNER JOIN statement that will accomplish an intersection between the employer and the interview tables. Display the companyname, division, and statecode attributes from the employer table.
-- (Hint: Make sure you are joining on the ENTIRE PRIMARY key/foreign key relationship.) 
SELECT companyname, division, statecode
FROM employer
INNER JOIN interview USING(companyname, division);

-- 3. Write a SQL statement that accomplishes a difference between the state and employer tables (STATE - EMPLOYER)
SELECT statecode, description
FROM state 
WHERE statecode NOT IN(SELECT statecode FROM employer);


-- 4. Write a SQL statement that does a projection of the location and qtrcode attributes of the quarter table
SELECT location, qtrcode 
FROM quarter;

-- 5. Write a SQL statement that does a selection from the quarter table showing the quarters 20201 and 20204 only. Please use the IN operator 
SELECT * FROM quarter
WHERE qtrCode IN ("20201","20204");

-- 6. Write a SQL statement that will show the companyname, statecode, and full state name for each employer
SELECT companyname, statecode, description 
FROM employer LEFT JOIN state USING(statecode); 

-- 7. Write a SQL statement that will show the descriptions for ALL states as well as the companynames of employers located each state. 
SELECT description, companyname
FROM employer RIGHT JOIN state USING(statecode); 

-- Another way of solving Q7 (using left join query)
SELECT state.description, employer.companyName FROM state
LEFT JOIN employer ON(state.stateCode=employer.stateCode)
