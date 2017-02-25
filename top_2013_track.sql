SELECT
	Track.Name,
	COUNT(InvoiceLine.TrackId) AS `Sale`
FROM InvoiceLine, Invoice, Track
WHERE InvoiceLine.TrackId = Track.TrackId
AND InvoiceLine.InvoiceId = Invoice.InvoiceId
AND Invoice.InvoiceDate between '2013-01-01' AND '2013-12-31'
GROUP BY InvoiceLine.TrackId
