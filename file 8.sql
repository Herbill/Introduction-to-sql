USE FuelKenya;

ALTER TABLE Employees Add  Salary int;

SELECT * FROM Employees;

SET SQL_SAFE_UPDATES = 0;

UPDATE Employees
SET Salary = ROUND(rand() * (80000 - 40000) + 40000, 2);

SELECT * FROM Employees;

SET SQL_SAFE_UPDATES = 1;

SELECT DepartmentName,
(SELECT COUNT(*),
from Employees
WHERE Employees.DepartmentID = Department.DepartmentID) AS EmployeeCount
FROM Departments;

SELECT *
FROM employees
WHERE Salary = (SELECT MAX(Salary)
FROM Employees AS e 
WHERE e.DepartmentID = Employees.DepartmentID);

SELECT DepartmentID, AverageSalary
FROM(SELECT DepartmentID,AVG(Salary) AS AverageSalary
  FROM Employees
  GROUP BY DepartmentID) AS AvgSalaries
  WHERE AverageSalary > 50000;
