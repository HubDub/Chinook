Select Count(T.PlayListId) as "Number of Tracks", 
	Name as "Playlist Name"
From Playlist L
	Join PlaylistTrack T
Where L.PlayListId = T.PlayListId
Group By T.PlayListId


/*
SELECT 	PL.Name, COUNT(PT.PlaylistId)
FROM PlayList AS PL
	JOIN PlayListTrack AS PT ON PL.PlayListId = PT.PlayListId
GROUP BY PL.Name
*/