Select Total, 
	C.FirstName, C.LastName, 
	C.Country, 
	E.FirstName, E.LastName
From Invoice I, Customer C, Employee E
Where EmployeeId = SupportRepId