show databases;
CREATE DATABASE Admission;
USE Admission;

SELECT database();

CREATE TABLE IF NOT EXISTS College (
cName VARCHAR(30),
state VARCHAR(2),
enrollment INT,
PRIMARY KEY (cName));

CREATE TABLE IF NOT EXISTS Student (
sID INT,
sName VARCHAR(30),
GPA FLOAT (3,2),
sizeHS INT,
PRIMARY KEY(sID));

CREATE TABLE IF NOT EXISTS Apply (
sID INT,
cName VARCHAR(30),
major VARCHAR(30),
decision TEXT,
PRIMARY KEY (sID, cName, major));

INSERT INTO College (cName, state, enrollment) VALUES ('Stanford', 'CA', 15000), ('Berkeley',
'CA', 36000), ('MIT', 'MA', 10000), ('Cornell', 'NY', 21000);

Select cName , state from College;

INSERT INTO Student (sID, sName, GPA, sizeHS)
VALUES (123, 'Amy', 3.9, 1000);

Select * from Student;

INSERT INTO Student (sID, sName, GPA, sizeHS)
VALUES (234, 'Bob', 3.6, 1500);

INSERT INTO Student (sID, sName, GPA, sizeHS)
VALUES (345, 'Craig', 3.5, 500);

INSERT INTO Student (sID, sName, GPA, sizeHS)
VALUES (456, 'Doris', 3.9, 1000);

INSERT INTO Student (sID, sName, GPA, sizeHS)
VALUES (567, 'Edward', 2.9, 2000);

INSERT INTO Student (sID, sName, GPA, sizeHS)
VALUES (678, 'Fay', 3.8, 200);

INSERT INTO Student (sID, sName, GPA, sizeHS)
VALUES (789, 'Gary', 3.4, 800);

INSERT INTO Student (sID, sName, GPA, sizeHS)
VALUES (987, 'Helen', 3.7, 800);

INSERT INTO Student (sID, sName, GPA, sizeHS)
VALUES (876, 'Irene', 3.9, 400);

INSERT INTO Student (sID, sName, GPA, sizeHS)
VALUES (765, 'Jay', 2.9, 1500);

INSERT INTO Student (sID, sName, GPA, sizeHS)
VALUES (654, 'Amy', 3.9, 1000);

INSERT INTO Student (sID, sName, GPA, sizeHS)
VALUES (543, 'Craig', 3.4, 2000);

INSERT INTO Apply (sID, cName, major, decision) VALUES
(123, 'Stanford', 'CS', 'Y'),
(123, 'Stanford', 'EE', 'N'),
(123, 'Berkeley', 'CS', 'Y'),
(123, 'Cornell', 'EE', 'Y'),
(234, 'Berkeley', 'biology', 'N'),
(345, 'MIT', 'bioengineering', 'Y'),
(345, 'Cornell', 'bioengineering', 'N'),
(345, 'Cornell', 'CS', 'Y'),
(345, 'Cornell', 'EE', 'N'),
(678, 'Stanford', 'history', 'Y'),
(987, 'Stanford', 'CS', 'Y'),
(987, 'Berkeley', 'CS', 'Y'),
(876, 'Stanford', 'CS', 'N'),
(876, 'MIT', 'biology', 'Y'),
(876, 'MIT', 'marine biology', 'N'),
(765, 'Stanford', 'history', 'Y'),
(765, 'Cornell', 'history', 'N'),
(765, 'Cornell', 'psychology', 'Y'),
(543, 'MIT', 'CS', 'N');

Select * from Student;
Select * from Apply;

select sID, sName, GPA
from Student
where GPA > 3.6;


