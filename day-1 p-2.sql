USE learndb;

CREATE TABLE Worker (
	ID INT NOT NULL,
	WorName VARCHAR(255) NOT NULL,
	Salary INT
);

INSERT INTO Worker(ID, WorName, Salary)
VALUES('1', 'Tom', 7000);

INSERT INTO Worker (ID, WorName, Salary)
VALUES('2', 'Emma', 10000);

SELECT * FROM Worker;

ALTER TABLE Worker
ADD City VARCHAR(255) NULL;


CREATE TABLE Students(
	ID INT UNIQUE,
	Name VARCHAR(255) NOT NULL,
	City VARCHAR(255),
	Salary INT
);

EXEC sp_rename 'Students.Salary', 'Class', 'COLUMN';
SELECT COLUMN_NAME 
FROM INFORMATION_SCHEMA.COLUMNS 
WHERE TABLE_NAME = 'Students';

SELECT * FROM Students;

INSERT INTO Students (ID, Name, City, Class)
VALUES (1, 'Jony', 'CTG', 10);

INSERT INTO Students (ID, Name, City, Class)
VALUES (2, 'Rony', 'Dhaka', 10);

INSERT INTO Students (ID, Name, City, Class)
VALUES (3, 'Jamal', 'CTG', 9);

SELECT * FROM Students;


CREATE TABLE ExStudents (
	ID INT PRIMARY KEY,
	Name VARCHAR(255) NOT NULL,
	Mobile VARCHAR(15)
);

INSERT INTO ExStudents (ID, Name, Mobile)
VALUES(1, 'Abul', '+8801876533772');

SELECT * FROM ExStudents;
SELECT * FROM employee;

CREATE TABLE Dept (
	ID INT PRIMARY KEY,
	DeptName VARCHAR(255),
	DepID VARCHAR(255),
	EmpID INT
);

SELECT * FROM Dept;

INSERT INTO Dept(ID, DeptName, DepID, EmpID)
VALUES('1', 'Bangla', 'Ban101', 2);

INSERT INTO Dept (ID,DeptName, DepID, EmpID)
VALUES (2, 'English', 'Eng101', 5);

CREATE TABLE Teachers(
	ID INT PRIMARY KEY,
	Name VARCHAR(255),
	Dep VARCHAR(255),
	Gender VARCHAR(255) CHECK (Gender = 'Male' OR Gender = 'Female'),
	Salary INT CHECK (Salary < 20000)
);

INSERT INTO Teachers (ID, Name, Dep, Gender, Salary)
VALUES (1, 'Kamal', 'ICT', 'Male', 19000);

SELECT * FROM Teachers;

INSERT INTO Teachers (ID, Name, Dep, Gender, Salary)
VALUES (2, 'Hasan', 'English', 'Male', 18000);


SELECT * FROM employee;

SELECT * FROM employee
ORDER BY EmpName ASC;

SELECT * FROM employee 
ORDER BY Salary DESC;

SELECT * FROM employee
ORDER BY EmpName DESC;

ALTER TABLE employee
ADD Age INT;

ALTER TABLE employee
DROP COLUMN Age;

UPDATE employee
SET Salary = 20000
WHERE ID = 1;

UPDATE employee
SET EmpName = 'Alice Ali', Salary = 22000
WHERE ID = 1 AND EmpName = 'Alice Johnson';

SELECT EmpName as Name 
From employee;