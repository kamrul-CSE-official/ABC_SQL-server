-- Creating the Student table
CREATE TABLE Student(
    Student_id INT PRIMARY KEY IDENTITY(1,1), -- Auto-incrementing primary key (starting at 1, incrementing by 1)
    First_name VARCHAR(50),  -- First name of the student, max length 50 characters
    Last_name VARCHAR(50),   -- Last name of the student, max length 50 characters
    Cgpa NUMERIC(4,2) CHECK (Cgpa BETWEEN 0.00 AND 4.00)  -- CGPA must be between 0.00 and 4.00
);

-- Inserting a new student record into the Student table
INSERT INTO Student (
    First_name, Last_name, Cgpa
) VALUES (
    'MD.Kamrul', 'Hasan', 3.39  -- Valid CGPA within the allowed range
);

-- SQL Server does not support "ALTER TABLE ... RENAME TO", so we use "sp_rename" instead
-- Renaming the "Student" table to "Learners"
EXEC sp_rename 'Student', 'Learners';


-- Selecting data from the "Learners" table (will fail if the table is not renamed yet)
SELECT * FROM Learners;  

-- Checking if the table "Learners" exists in the database schema
SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'Learners';

-- Dropping the "Learners" table (deleting it permanently from the database)
DROP TABLE Learners;
