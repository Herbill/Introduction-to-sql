USE fuelkenya;

UPDATE Employees SET LastName = 'Ndegwa' WHERE EmployeeID = 1;
UPDATE Projects SET ProjectName = 'Project Z' WHERE ProjetcID = 1005;

SELECT * FROM Employees;

DELETE FROM Employees WHERE EmployeeID = 9;
SELECT *FROM Projects;
DELETE FROM Projects WHERE ProjetcID = 1001;

INSERT INTO Employees (
EmployeeID, FirstName, LastName, DepartmentID, HireDate) 
VALUES
(11, 'Kiplangat', 'kosgey', 104, '2024-01-01');

SELECT * FROM Employees;

ALTER TABLE Employees Add Email VARCHAR (100);
SELECT * FROM Employees;

ALTER TABLE Employees DROP COLUMN Email;
SELECT * FROM Employees;

SELECT DepartmentID, COUNT(*) AS EmployeeCount
FROM Employees
GROUP BY DepartmentID;

 