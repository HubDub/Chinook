Select E.FirstName ||" "|| E.LastName as "Full Name", I.InvoiceId
From Employee E
	Join Invoice I 
	Join Customer C
where EmployeeId = C.SupportRepId
	And C.CustomerId = I.CustomerId
	And Title = "Sales Support Agent"
Order By "Full Name"

/* OR 
SELECT e.FirstName || ", " || e.LastName AS 'Full Name',
		i.InvoiceId
FROM Employee AS e
	JOIN Customer AS c ON e.EmployeeId = c.SupportRepId
	JOIN Invoice AS i ON c.CustomerId = i.CustomerId
ORDER BY 'Full Name'
