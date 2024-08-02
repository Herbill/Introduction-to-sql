USE FuelKenya;

SELECT Employees.FirstName, Employees.LastName, Department.DepartmentName
FROM Employees
INNER JOIN Department ON Employees.DepartmentID = Department.Departments.DepartmentsID;

SELECT Employees.EmployeeID, Employees.FirstName,  Employees.LastName,
Projects.ProjetcID, Projects.ProjectName
FROM Employees
CROSS JOIN Projects;