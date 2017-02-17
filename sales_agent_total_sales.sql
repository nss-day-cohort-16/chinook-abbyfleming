SELECT 
	Employee.FirstName || " " || Employee.LastName AS `Sales Rep`,
	round(sum(Invoice.Total),2) AS `Sales`
FROM Invoice
JOIN Customer ON Customer.CustomerId = Invoice.CustomerId
JOIN Employee ON Customer.SupportRepId = Employee.EmployeeId
GROUP By Employee.EmployeeId