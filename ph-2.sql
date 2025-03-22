-- ## Create a table with CONSTRAINTS
CREATE TABLE [User](
	User_id INT IDENTITY(1,1),
	User_name VARCHAR(255) NOT NULL,
	Email VARCHAR(255) UNIQUE NOT NULL,
	Age INT DEFAULT 18,
	PRIMARY KEY(User_id, User_name)
);

INSERT [User] (User_name, Email) VALUES ('Abc', 'abc@gmail.com');

INSERT INTO [User] (User_name, Email) VALUES ('Def', 'def@gmail.com'),
('Ijk', 'ijk@gmail.com');

INSERT INTO [User] (User_name, Email, Age)
VALUES ('Alice', 'alice@example.com', 22),
       ('Bob', 'bob@example.com', 30),
       ('Charlie', 'charlie@example.com', 27);


SELECT * FROM [User]

--TRUNCATE TABLE [User];

DELETE FROM [User]
WHERE User_id = 5;


DROP TABLE [User];


-- ## NEXT: 30-10
