SELECT 
	InvoiceLine.InvoiceLineId, 
	Track.Name AS `Track Name`,
	Artist.Name AS `Artist`
FROM InvoiceLine 
INNER JOIN Track ON Track.TrackId = InvoiceLine.TrackId
INNER JOIN Album ON Album.AlbumId = Track.AlbumId
INNER JOIN Artist ON Artist.ArtistId = Album.ArtistId