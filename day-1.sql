CREATE DATABASE learndb;


USE learndb;


CREATE TABLE employee (
	ID int,
	EmpName varchar(255),
	City varchar(255),
	Salary int
);


insert into employee(ID, EmpName, City, Salary)
values('1', 'Tom', 'ABC', '7000');

SELECT * FROM employee;

INSERT into employee(ID, EmpName, City, Salary)
VALUES(2, 'Jemy', 'ABC', 8999);


SELECT ID, EmpName FROM employee;


INSERT INTO employee (ID, EmpName, City, Salary) VALUES
(1, 'Alice Johnson', 'New York', 75000),
(2, 'Bob Smith', 'Los Angeles', 82000),
(3, 'Charlie Brown', 'Chicago', 64000),
(4, 'David Williams', 'Houston', 90000),
(5, 'Emma Davis', 'Phoenix', 72000),
(6, 'Frank Thomas', 'Philadelphia', 81000),
(7, 'Grace Lee', 'San Antonio', 69000),
(8, 'Henry Wilson', 'San Diego', 88000),
(9, 'Ivy Martinez', 'Dallas', 95000),
(10, 'Jack Anderson', 'San Jose', 77000),
(11, 'Karen Taylor', 'Austin', 85000),
(12, 'Leo Harris', 'Jacksonville', 66000),
(13, 'Mia White', 'San Francisco', 99000),
(14, 'Nathan Moore', 'Columbus', 73000),
(15, 'Olivia Clark', 'Charlotte', 78000);


SELECT DISTINCT ID FROM employee;

SELECT EMPNAME
FROM employee
WHERE Salary < 8000;

SELECT * 
FROM employee
WHERE EmpName = 'Tom'

SELECT * FROM employee
ORDER BY Salary DESC;

SELECT * FROM employee
ORDER BY City, Salary;

SELECT * FROM employee
WHERE City = 'ABC' AND Salary < 9000;

SELECT * FROM employee;


SELECT * FROM employee
WHERE EmpName = 'Tom' OR EmpName = 'Alice Johnson';


SELECT * FROM employee
WHERE EmpName = 'Alice Johnson' OR EmpName = 'Kamrul';

SELECT * FROM employee
WHERE NOT Salary < 80000;


SELECT * FROM employee
WHERE City IN('ABC', 'ABC');


SELECT * FROM employee
WHERE EmpName NOT IN('Tom', 'Bob Smith', 'Grace Lee');

SELECT * FROM employee
WHERE Salary BETWEEN 80000 AND 90000;

SELECT * FROM employee
WHERE Salary NOT BETWEEN 50000 AND 90000;


SELECT * FROM employee
WHERE EmpName BETWEEN 'Alice Johnson' AND 'Henry Wilson'
ORDER BY EmpName;


SELECT * FROM employee
WHERE City LIKE 'A%';

SELECT * FROM employee
WHERE EmpName LIKE 'J%';

SELECT * FROM employee
WHERE EmpName LIKE '_e%';

SELECT * FROM employee
WHERE EmpName NOT LIKE 'E%' AND EmpName NOT LIKE 'T%';

SELECT MAX(Salary) AS Result
FROM employee;

SELECT * FROM employee;

SELECT MIN(Salary) AS Result
FROM employee;


SELECT SUM(Salary)
FROM employee;

SELECT SUM(Salary)
FROM employee 
WHERE Salary >= 70000;

SELECT * FROM employee;

SELECT AVG(Salary) AS AVG_SALARY
FROM employee;

SELECT AVG(Salary) AS AVG_SALARY
FROM employee WHERE Salary >= 80000;

SELECT COUNT(EmpName) FROM employee;

SELECT COUNT(EmpName) FROM employee
WHERE Salary >= 80000;

SELECT COUNT(*)
FROM employee;