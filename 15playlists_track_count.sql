Select Count(T.PlayListId) as "Number of Tracks", 
	Name as "Playlist Name"
From Playlist L
	Join PlaylistTrack T
Where L.PlayListId = T.PlayListId
Group By T.PlayListId
