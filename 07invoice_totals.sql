Select Total as "Invoice Total", 
	C.FirstName ||" "||	C.LastName as "Customer Name", 
	C.Country, 
	E.FirstName ||" "|| E.LastName as "Sales Agent"
From Invoice I, Customer C, Employee E
Where E.EmployeeId = C.SupportRepId
	And C.CustomerId = I.CustomerId
Order By C.LastName