SELECT Employee.FirstName + " " + Employee.LastName AS `Sales Rep`, 
Invoice.InvoiceId, Invoice.InvoiceDate
FROM Invoice, Employee, Customer
WHERE Invoice.CustomerId = Customer.CustomerId AND Customer.SupportRepId = Employee.EmployeeId