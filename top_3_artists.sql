SELECT
	COUNT(InvoiceLine.TrackId) AS `Tracks Sold`,
	Artist.Name
FROM InvoiceLine
JOIN Track ON InvoiceLine.TrackId = Track.TrackId
JOIN Album ON Track.AlbumId = Album.AlbumId
JOIN Artist ON Album.ArtistId = Artist.ArtistId
GROUP BY Artist.ArtistId
ORDER BY `Tracks Sold` DESC
LIMIT 3