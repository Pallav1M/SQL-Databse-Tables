create database dog_walker;
use  dog_walker;
SELECT DATABASE();
show databases;

/-- To assign data types /-- 

CREATE TABLE tablename
  (
    column_name data_type,
    column_name data_type
  );
  
/-- To create tables /--
  
CREATE TABLE cats
  (
    name VARCHAR(100),
    age INT
  );
  
-- To see if a table was created /-- 
show tables;

-- To see all columns /-- 
show columns from cats;
desc cats;

show tables;

desc cats;

-- CODE: Dropping Tables

-- DROP TABLE <tablename>; 
show tables;

DROP TABLE cats; 

-- Creating your own table challenge 

CREATE TABLE pastries
  (
    name VARCHAR(50),
    quantity INT
  );

SHOW tables;
DESC pastries;

drop table pastries;
show tables;

CREATE TABLE cats (
    name VARCHAR(50),
    age INT
);

show tables;
desc cats;

-- Inserting Data 

insert into cats(name, age)
values ("Blue", 2);

insert into cats (age, name)
values (11, "Draco");

show tables;
desc cats;
select * from cats;

-- Insert into tables 

insert into cats(name, age)
values ('Peanut', 2)
, ('Butter', 5)
, ('Jelly', 7);
SELECT 
    *
FROM
    cats;

-- Create and insert data 

CREATE TABLE people (
    first_name VARCHAR(20),
    last_name VARCHAR(20),
    age INT
);

insert into people (first_name, last_name, age) 
values ('Tina', 'Belcher', 13);

insert into people (last_name, first_name, age) 
values ('Bob', 'Belcher', 42);

SELECT 
    *
FROM
    people;
DELETE FROM people 
WHERE
    last_name = 'Bob';

SELECT 
    *
FROM
    people;

insert into people (last_name, first_name, age)
values ('Belcher', 'Bob', 42);

SELECT 
    *
FROM
    people;

insert into people (first_name, last_name, age)
values ('Linda', 'Belcher', 45)
,('Philip', 'Frond', 38)
,('Calvin', 'Fishchoeder', 70);

SELECT 
    *
FROM
    people;

drop table people;

select * from people;

show tables;

insert into cats (name, age)
values ('hllo', 'gjvhhj');

show warnings;
select * from cats;

-- Null 
insert into cats (name)
values('Alabama');
desc cats;

insert into cats ()
values();

select * from cats;

-- Assign not null 

CREATE TABLE cats2 (
    name VARCHAR(100) NOT NULL,
    age INT NOT NULL
);

desc cats2;

insert into cats2(name) 
values('Texas');

SELECT 
    *
FROM
    cats2;

-- Default values 

CREATE TABLE cats3 (
    name VARCHAR(20) DEFAULT 'no name provided',
    age INT DEFAULT 99
);

desc cats3;

insert into cats3 (age) 
values (13);

SELECT 
    *
FROM
    cats3;

insert into cats3 ()
values ();

SELECT 
    *
FROM
    cats3;

insert into cats3 (name, age)
values ('Montana', null);

SELECT 
    *
FROM
    cats3;

CREATE TABLE cats4
  (
    name VARCHAR(20) NOT NULL DEFAULT 'unnamed',
    age INT NOT NULL DEFAULT 99
  );
  
INSERT INTO cats4(name, age) VALUES('Cali', NULL);
-- Error Code: 1048. Column 'age' cannot be null

-- Primary key 

CREATE TABLE unique_cats (
    cat_id INT NOT NULL,
    name VARCHAR(100),
    age INT,
    PRIMARY KEY (cat_id)
);

desc unique_cats;

insert into unique_cats(cat_id, name, age) 
values (1, 'Fred', 23);

select* from unique_cats;

insert into unique_cats(cat_id, name, age) 
values (2, 'James', 2);

SELECT 
    *
FROM
    unique_cats;

-- Autoincrement-- 

CREATE TABLE unique_cats2 (
    cats_id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(100),
    age INT,
    PRIMARY KEY (cats_id)
);

desc unique_cats2;

insert into unique_cats2 (name, age)
values ("skippy", 2);

SELECT 
    *
FROM
    unique_cats2;
INSERT INTO unique_cats2(name, age) VALUES('Jiff', 3);
INSERT INTO unique_cats2(name, age) VALUES('Jiff', 3);
INSERT INTO unique_cats2(name, age) VALUES('Jiff', 3);
INSERT INTO unique_cats2(name, age) VALUES('Skippy', 4);

select * from unique_cats2;

-- Table constraint exercise 

CREATE TABLE Employees (
    id INT NOT NULL AUTO_INCREMENT,
    last_name VARCHAR(100) NOT NULL,
    first_name VARCHAR(100) NOT NULL,
    middle_name VARCHAR(100),
    age INT NOT NULL,
    current_status VARCHAR(100) NOT NULL DEFAULT 'employed',
    PRIMARY KEY (id)
); 

desc Employees;

insert into Employees(first_name, last_name, age)
values ('Dora', 'Smith', 23);

select * from employees;

-- Another way of defining a primary key:

CREATE TABLE employees (
    id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    middle_name VARCHAR(255),
    age INT NOT NULL,
    current_status VARCHAR(255) NOT NULL DEFAULT 'employed'
);

drop table cats;

show databases;

show tables;

-- Recreating the cats table

create table cats 
(
cat_id int not null auto_increment,
name varchar(100),
breed varchar(100),
age int,
primary key(cat_id)
);

drop table cats;

desc cats;

INSERT INTO cats(name, breed, age) 
VALUES ('Ringo', 'Tabby', 4),
       ('Cindy', 'Maine Coon', 10),
       ('Dumbledore', 'Maine Coon', 11),
       ('Egg', 'Persian', 4),
       ('Misty', 'Tabby', 13),
       ('George Michael', 'Ragdoll', 9),
       ('Jackson', 'Sphynx', 7);

SELECT 
    *
FROM
    cats;

SELECT 
    name
FROM
    cats;

SELECT 
    cat_id, name, age
FROM
    cats;
    
-- Introduction to where 

select * from cats 
where age = 4;

select * from cats 
where name = "Egg";

select cat_id from cats;

select name, breed from cats;

select name, age from cats
where breed = "Tabby";

select cat_id, age
from cats
where cat_id = age;

-- Aliases

Select name as 'cat name', breed as 'kitty breed' from cats;

-- Update 
-- Change tabby cats to shorthair:

Update cats set breed = "Shorthair"
where breed = "Tabby";

select * from cats;

update cats set age = 14
where name = "Misty";

select * from cats;

update cats set name = "Jack" 
where name = "Jackson";

select * from cats;

select * from cats
where name = "Ringo";

update cats set breed = "British Shorthair" 
where cat_id = 1;

select * from cats
where name = "Ringo";

select * from cats ;

update cats set age = 12
where breed = "Maine Coon";

select * from cats ;

select * from cats 
where name = "Egg";

delete from cats 
where name = "Egg";


select * from cats 
where name = "Egg";

select * from cats ;

-- Delete Practice

SELECT * FROM cats WHERE age=4;
 
DELETE FROM cats WHERE age=4;
 
SELECT * FROM cats WHERE age=4;
 
SELECT * FROM cats;
 
SELECT *  FROM cats WHERE cat_id=age;
 
DELETE FROM cats WHERE cat_id=age;
 
DELETE FROM cats;
 
SELECT * FROM cats;

select * from books;
-- Error Code: 1007. Can't create database 'dog_walker'; database exists
