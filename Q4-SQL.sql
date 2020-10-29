CREATE DATABASE Q4SQL
GO
USE Q4SQL
CREATE TABLE Customers (
	id INT PRIMARY KEY IDENTITY(1,1),
	name1 VARCHAR(50) NOT NULL,
);

CREATE TABLE Customers2 (
	id INT PRIMARY KEY IDENTITY(1,1),
	nameT VARCHAR(50) NOT NULL,
);
GO
INSERT INTO Customers(name1)
	VALUES 
	('Fabien'),
	('Adrien'),
	('Emilie'),
	('Coralie'),
	('Coline');
INSERT INTO Customers2(nameT)
	VALUES 
	('Fabien'),
	('Adrien'),
	('Emilie'),
	('Coralie'),
	('Coline');

GO
BEGIN TRANSACTION
	UPDATE Customers
	SET name1 = CONCAT(Customers.name1, 'Z');
	UPDATE Customers2
	SET nameT = CONCAT(Customers2.nameT, 'Z');
COMMIT
GO
BEGIN TRANSACTION
	UPDATE Customers2
	SET nameT = TRIM('Z' FROM nameT);
COMMIT