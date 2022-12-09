--CREATE DATABASE
CREATE DATABASE EXAMPLE
GO
USE EXAMPLE
GO
--CREATE TABLE Department
CREATE TABLE Department(
DepartId INT PRIMARY KEY,
DepartName varchar(50) NOT NULL,
Description varchar(100) NOT NULL)

--CREATE TABLE Employee
CREATE TABLE Employee(
EmpCode char (6) PRIMARY KEY,
FirstName varchar(30) NOT NULL,
LastName varchar(30) NOT NULL,
Birthday SMALLDATETIME NOT NULL,
Gender Bit DEFAULT(1),
Address varchar(100),
DepartID INT FOREIGN KEY REFERENCES Department(DepartId),
Salary MONEY )


--INSERT TABLE Department
INSERT INTO Department VALUES
(1,'Marketing','Brand'),
(2,'Ecommerce','Sale'),
(3,'Design','Graphic')

--INSERT TABLE Employee
INSERT INTO Employee (EmpCode,FirstName,LastName,Birthday,Address,DepartID,Salary)
VALUES
('FGH34S','Nguyen Nho','Quang','1999-10-26','Ha Noi',1,10000),
('FGY37S','Lung Van','Tung','2000-11-26','Ha Tay',2,20000),
('FFH74S','Linh Thi','Tinh','1986-11-26','Ha Nam',2,30000)

--Increase the salary for all employees

UPDATE Employee SET Salary=Salary+ Salary * 0.1

--ALTER TABLE
ALTER TABLE Employee
ADD CHECK (Salary>0);

--VIEW
SELECT*FROM Employee
SELECT*FROM Department