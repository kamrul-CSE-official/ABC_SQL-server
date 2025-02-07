USE learndb;

SELECT * FROM employee;

SELECT * FROM Dept;
INSERT INTO Dept (ID, EmpID, DepID, DeptName) 
VALUES (3, 20, 'Math101', 'G.Math');

CREATE TABLE Projects (
	ID INT PRIMARY KEY,
	ProjectName VARCHAR(255) NOT NULL,
	EmpID INT
);

INSERT INTO Projects(
	ID,
	ProjectName,
	EmpID
) VALUES(
	1,
	'Mobile App',
	2
);

SELECT * FROM Projects;
SELECT * FROM Dept;
SELECT * FROM employee;

--Inner Join / Join (Only common)
SELECT EmpName, d.DeptName
FROM employee e
INNER JOIN Dept d ON e.ID = d.EmpID;


--Left Join (All records)
SELECT e.EmpName, d.DeptName, p.ProjectName
FROM employee e
LEFT JOIN Dept d ON e.ID = d.EmpID
LEFT JOIN Projects p ON p.EmpID = e.ID;


--Right join (Inner join + any additional records from the right table)
SELECT e.EmpName, d.DeptName, p.ProjectName
FROM employee e
RIGHT JOIN Dept d ON e.ID = d.EmpID
LEFT JOIN Projects p ON p.EmpID = e.ID;

-- Pagination
SELECT * 
FROM employee
ORDER BY EmpName  -- Required for OFFSET
OFFSET 10 ROWS  -- Skip the first 10 rows
FETCH NEXT 5 ROWS ONLY;  -- Get the next 5 rows
