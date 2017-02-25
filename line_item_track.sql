SELECT 
	InvoiceLineId, 
	Name AS `Track Name`
FROM InvoiceLine i
JOIN Track t
ON i.TrackId = t.TrackId

