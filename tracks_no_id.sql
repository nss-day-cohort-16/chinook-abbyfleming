SELECT 
	Track.Name AS `Track Name`,
	Album.Title AS `Album`,
	MediaType.Name AS `Media Type`,
	Genre.Name AS `Genre`
FROM Track
INNER JOIN Album ON Album.AlbumId = Track.AlbumId
INNER JOIN MediaType ON MediaType.MediaTypeId = Track.MediaTypeId
INNER JOIN Genre ON Genre.GenreId = Track.GenreId