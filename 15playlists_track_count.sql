Select Count(T.PlayListId), Name
From Playlist L
	Join PlaylistTrack T
Where L.PlayListId = T.PlayListId
Group By T.PlayListId
