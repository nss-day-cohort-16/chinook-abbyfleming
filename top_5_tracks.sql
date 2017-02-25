SELECT
	Track.Name,
	COUNT(InvoiceLine.TrackId) AS `Sale`
FROM InvoiceLine, Invoice, Track
WHERE InvoiceLine.TrackId = Track.TrackId
AND InvoiceLine.InvoiceId = Invoice.InvoiceId
GROUP BY InvoiceLine.TrackId
ORDER BY Sale DESC
LIMIT 5