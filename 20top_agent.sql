Select EmployeeId, LastName, FirstName, Max(SumTotal)
From (
Select  
	E.EmployeeId, 
	E.LastName, 
	E.FirstName, 
	Sum(I.Total) as SumTotal
From Employee E
	Join Customer C
	Join Invoice I
Where E.EmployeeId = C.SupportRepId
	And C.CustomerId  = I.CustomerId
	And I.InvoiceDate 
Group By E.EmployeeId)