SELECT DISTINCT Employee.FirstName, Employee.LastName 
FROM Employee, Customer
WHERE Customer.SupportRepId = Employee.EmployeeId 
