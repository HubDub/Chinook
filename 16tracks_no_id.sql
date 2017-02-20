Select A.Title as "Album Name", 
	M.Name as "Media Type", 
	G.Name as "Genre Name"
From Track T
	Join Album A
	Join MediaType M
	Join Genre G
Where T.AlbumId = A.AlbumId
	And T.MediaTypeId = M.MediaTypeId
	And T.GenreId = G.GenreId
	
/* OR 
SELECT 	T.Name AS 'Track Name',
		A.Title AS 'Album Name',
		M.Name AS 'Media Type',
		G.Name AS 'Genre Name'
FROM Track AS T
	JOIN Album AS A ON T.AlbumId = A.AlbumId
	JOIN MediaType AS M ON T.MediaTypeId = M.MediaTypeId
	JOIN Genre AS G ON T.GenreId = G.GenreId
*/