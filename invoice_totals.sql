SELECT Customer.FirstName + " " + Customer.LastName AS `Customer`, 
Customer.Country, Invoice.Total,
Employee.FirstName + " " + Employee.LastName AS `Sales Rep`
FROM Invoice, Employee, Customer
WHERE Invoice.CustomerId = Customer.CustomerId AND Customer.SupportRepId = Employee.EmployeeId