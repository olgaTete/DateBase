DROP DATABASE registry;
CREATE DATABASE registry;
USE registry;
CREATE TABLE car (
Id INT,
Brand NVARCHAR(50),
Year INT,
Model NVARCHAR(50)
);
drop database groups1;
create database groups1;
use groups1;
create table persons(
id int,
FirstName nvarchar(50), 
LastName nvarchar(50), 
Age int, 
Email nvarchar(50)
);
insert into persons
values
(1,"Eric","Lindroth","23","qwer@qwer.com"),
(2,"Mary","Lindroth","26","qwer@qwer.com"),
(3,"Fredrik","Lindroth","29","qwer@qwer.com");
create table sale (
Id int,
Price decimal,
Seller nvarchar(50),
Buyer nvarchar(50)
);
INSERT INTO sale
values
(1,"8.3","AB QWER","AB IKEA"),
(2,"7","AB QWER","AB IKEA"),
(3,"8.0","AB QWER","AB IKEA");