CREATE DATABASE FuelKenya;
Use FuelKenya;
CREATE TABLE Employees(
EmployeeID INT PRIMARY KEY,
FirstName VARCHAR(50),
LastName VARCHAR(50),
DepartmentID INT,
HireDate DATE
);

Create Table Department(
DepartmentID INT PRIMARY KEY,
DepartmentName VARCHAR(25)
);

Create Table PROJECTS(
ProjetcID INT PRIMARY KEY,
Projectname VARCHAR(50),
StartDate  date
);

Create Table Assignment(
Assignmentid INT PRIMARY KEY,
Employeeid INT,
Projectid INT,
Role VARCHAR(50),
FOREIGN KEY(Employeeid)REFERENCES Employees(Employeeid),
FOREIGN KEY(Projectid)REFERENCES Projects(Projetcid)
);

INSERT INTO Department (DepartmentID, DepartmentName) VALUES
(101, 'Human Resources'),
(102, 'Information Technology'),
(103, 'Finance'),
(104, 'Marketing'),
(105, 'Sales'),
(106, 'Operations'),
(107, 'Customer service'),
(108, 'Legal'),
(109, 'Research and Development'),
(110, 'Administration');