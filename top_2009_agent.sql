SELECT 
	MAX(Sales) AS Total, 
	FirstName || " " || LastName AS `Name`
FROM
	(
	SELECT 
	SUM(Total) AS Sales, e.FirstName, e.LastName
	FROM Invoice i, Customer c, Employee e
	WHERE i.customerId = c.customerId
	AND c.SupportRepId = e.EmployeeId
	AND i.InvoiceDate between '2009-01-01' AND '2009-12-31'
	GROUP BY e.EmployeeId
	)