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