-- John Melwin Richard, HW02

DROP DATABASE HW2;
CREATE DATABASE HW2;
USE HW2;
CREATE TABLE item(
itemID VARCHAR(25) NOT NULL PRIMARY KEY,
itemName VARCHAR(25) NOT NULL,
name VARCHAR(25) NOT NULL,
street VARCHAR(25),
city VARCHAR(25),
state CHAR(2),
zipcode VARCHAR(10),
cost DECIMAL(10,2) NOT NULL,
retailPrice DECIMAL(11,3),
notes VARCHAR(255),
shelfQty SMALLINT UNSIGNED,
perishable TINYINT UNSIGNED,
returnable TINYINT UNSIGNED,
longDescription MEDIUMTEXT) ENGINE=InnoDB DEFAULT CHARSET=utf8;
DESC ITEM;


-- Creating a seperate table colors because of multi-value attribute(colors)
CREATE TABLE colors (
	itemID    varchar(25),
	colors  varchar(25),
	foreign key(itemID) references item(itemID)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DESC ITEM;
DESC colors;