USE FuelKenya;

SELECT SUM(SALARY) AS Totalsalary
FROM Newdata;

SELECT AVG(SALAry) AS Totalsalary
FROM Newdata;

SELECT DepartmentID, MAX(HireDate) AS LatestHireDate
FROM Employees

SELECT * FROM Newdata
WHERE salary > 50000;

SELECT departmentID, COUNT(*) AS EmployeeCount
FROM employees
GROUP BY DepartmentID
HAVING Count(*) > 1;

SELECT * FROM Newdata
WHERE NOT Department = 'HR'; 

SELECT * FROM Employees
WHERE DepartmentID IN  (101, 102, 103); 

SELECT * FROM Newdata
WHERE Salary BETWEEN 60000 AND 70000; 

SELECT * FROM Newdata
WHERE NAME LIKE '%E'