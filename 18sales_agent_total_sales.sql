Select E.EmployeeId, E.LastName, E.FirstName, Sum(I.Total)
From Employee E
	Join Customer C
	Join Invoice I
Where E.EmployeeId = C.SupportRepId
	And C.CustomerId  = I.CustomerId
Group By E.EmployeeId
Order By Sum(I.Total) Desc
