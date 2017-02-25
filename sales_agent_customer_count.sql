SELECT 
	Employee.FirstName || " " || Employee.LastName AS `Name`,
	COUNT(Customer.CustomerId) AS `Customer Count`
FROM Employee 
JOIN Customer ON Customer.SupportRepId = Employee.EmployeeId
GROUP BY Employee.EmployeeId