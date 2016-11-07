Select E.FirstName ||" "|| E.LastName as "Full Name", I.InvoiceId
From Employee E
	Join Invoice I 
	Join Customer C
where EmployeeId = C.SupportRepId
	And C.CustomerId = I.CustomerId
	And Title = "Sales Support Agent"
Order By "Full Name"