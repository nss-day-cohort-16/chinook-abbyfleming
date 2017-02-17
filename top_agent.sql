SELECT 
	round(MAX(Sales),2) AS Total, 
	FirstName || " " || LastName AS `Name`
FROM
	(
	SELECT 
	SUM(Total) AS Sales, e.FirstName, e.LastName
	FROM Invoice i, Customer c, Employee e
	WHERE i.customerId = c.customerId
	AND c.SupportRepId = e.EmployeeId
	GROUP BY e.EmployeeId
	)