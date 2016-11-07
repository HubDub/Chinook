Select EmployeeId, LastName, FirstName, Max(SumTotal)
From (
Select  
	E.EmployeeId, 
	E.LastName, 
	E.FirstName, 
	Sum(I.Total) as SumTotal
From Employee E
	Join Customer C on E.EmployeeId = C.SupportRepId
	Join Invoice I on C.CustomerId = I.CustomerId
Where strftime('%Y', I.InvoiceDate) = "2009" 
Group By E.EmployeeId)


