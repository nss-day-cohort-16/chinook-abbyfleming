SELECT 
	Playlist.Name, COUNT(PlaylistTrack.TrackId) AS `Tracks In Playlist`
FROM Playlist
JOIN PlaylistTrack ON Playlist.PlaylistId = PlaylistTrack.PlaylistId
GROUP BY PlaylistTrack.PlaylistId
