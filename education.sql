drop database education;
create database education;
use education;

create table student (
id int primary key auto_increment,
FirstName nvarchar(255), 
LastName nvarchar(255));

insert into student (FirstName, LastName)
values 
("Petr", "Wiley"),
("Anna", "Uliams");

create table course (
id int primary key auto_increment, 
SubjectCourse nvarchar(255), 
Credits int not null, 
CodeCourse nvarchar(255));

insert into course (SubjectCourse, Credits,CodeCourse)
values
("Sociology", 10, "45DPE"),
("Math", 11, "46DPE");

create table address (
id int primary key auto_increment, 
StreetNumber int, 
Street nvarchar(255), 
City nvarchar(255),
StudentId int,
FOREIGN KEY (StudentId) REFERENCES Student (Id),
UNIQUE (StudentId));

insert into address (StreetNumber,Street,City,StudentId)
values
(10,"MainStreet","Osby",1),
(11, "MainStreet","Osby",2);

create table student_course (
id int primary key auto_increment,
studentId int,
courseId int,
foreign key (studentId) references student (Id),
foreign key (courseId) references course (Id)
);

insert into student_course (studentId, courseId)
values
(1,1),
(1,2),
(2,1);
