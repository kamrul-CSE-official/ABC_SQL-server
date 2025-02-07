USE learndb;

SELECT * FROM employee;

CREATE PROCEDURE ALLRECORDS
AS
SELECT * FROM employee
GO;

EXEC ALLRECORDS;

CREATE PROCEDURE ALLRECORDS2 @City VARCHAR(20)
AS
	SELECT * FROM employee WHERE City = @City;


-- Execute the stored procedure
EXEC ALLRECORDS2 @City = 'ABC';

CREATE PROCEDURE ALLRECORDS3 
    @City VARCHAR(255), 
    @EmpName VARCHAR(255)
AS
BEGIN
    SELECT * FROM employee 
    WHERE City = @City AND EmpName = @EmpName;
END;
GO

-- Execute the stored procedure
EXEC ALLRECORDS3 @City = 'Los Angeles', @EmpName = 'Bob Smith';


CREATE INDEX MyIndex
on employee (EmpName);

CREATE INDEX MyIndex2
ON employee (EmpName, Salary);

DROP INDEX employee.MyIndex2;

SELECT * INTO EmpBackup2022
FROM employee;

SELECT * FROM EmpBackup2022;

DROP TABLE EmpBackup2022;

SELECT EmpName, Salary INTO MyBackup
FROM employee;

SELECT * FROM MyBackup;

DROP Table MyBackup;

SELECT TOP 2 * FROM employee;

SELECT TOP 50 PERCENT * FROM employee;

SELECT TOP 75 PERCENT * FROM employee;

SELECT TOP 25 PERCENT * FROM employee
WHERE Salary > 70000;

--BACKUP DATABASE learndb
--TO DISK = 'E:\Database\SQL_SERVER\mybackup.bak'
--;


CREATE VIEW [Employees ABC] AS
SELECT EmpName, City 
FROM employee
WHERE City = 'ABC';

SELECT * FROM [Employees ABC];


CREATE VIEW [Salary Above 70000] AS
SELECT EmpName, City, Salary 
FROM employee
WHERE Salary > 70000;

SELECT * FROM [Salary Above 70000];

DROP VIEW [Employees ABC];

DROP TABLE Teachers;
