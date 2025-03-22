CREATE TABLE Student(
	Student_id INT PRIMARY KEY IDENTITY(1,1),
	First_name VARCHAR(50),
	Last_name VARCHAR(50),
	Cgpa NUMERIC(4,2) CHECK (Cgpa BETWEEN 0.00 AND 4.00)
);

INSERT INTO Student (
	First_name, Last_name, Cgpa
)VALUES(
	'MD.Kamrul', 'Hasan', 3.39
);

SELECT * FROM Student;

--ALTER TABLE Student RENAME TO Learners
EXEC learndb 'Student', 'Learners';