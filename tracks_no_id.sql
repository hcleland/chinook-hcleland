--tracks_no_id.sql: 
--Provide a query that shows all the Tracks, but displays no IDs. 
--The result should include the Album name, Media type and Genre.

SELECT t.Name as TrackName, a.Title as AlbumName, m.Name as MediaType, g.Name as Genre
FROM Track t 
LEFT JOIN Album a 
ON (t.AlbumId = a.AlbumId)
LEFT JOIN MediaType m 
ON (t.MediaTypeId = m.MediaTypeId)
LEFT JOIN Genre g 
ON (t.GenreId = g.GenreId);
