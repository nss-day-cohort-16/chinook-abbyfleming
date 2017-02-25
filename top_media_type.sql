SELECT 
	MediaType.Name,
	COUNT(InvoiceLine.TrackId) AS `Purchase`
FROM InvoiceLine
JOIN Track ON Track.TrackId = InvoiceLine.TrackId
JOIN MediaType ON Track.MediaTypeId = MediaType.MediaTypeId
GROUP BY Track.MediaTypeId