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
	