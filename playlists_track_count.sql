--playlists_track_count.sql: 
--Provide a query that shows the total number of tracks in each playlist. 
--The Playlist name should be include on the resulant table.

SELECT COUNT(pt.TrackId) as TrackIdCount, pl.Name as PlaylistName
FROM PlaylistTrack pt 
LEFT JOIN Track t
ON (pt.TrackId = t.TrackId)
LEFT JOIN Playlist pl 
ON (pt.PlaylistId = pl.PlaylistId)
GROUP BY pl.Name;

--SELECT COUNT(pt.TrackId) as TrackIdCount, pl.Name as PlaylistName
--SELECT *
--FROM PlaylistTrack pt 
--LEFT JOIN Track t
--ON (pt.TrackId = t.TrackId)
--LEFT JOIN Playlist pl 
--ON (pt.PlaylistId = pl.PlaylistId)
--WHERE pl.Name LIKE '%Grunge';
--GROUP BY pl.Name;

