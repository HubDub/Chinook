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

/*
SELECT Sales.SalesAgent AS 'Sales Agent', Max(Sales.TotalSales) AS 'Total Sales'
FROM(
SELECT 	E.FirstName || " " || E.LastName AS 'SalesAgent',
		SUM(I.Total) AS 'TotalSales'
FROM Employee AS E
	JOIN Customer AS C ON E.EmployeeId = C.SupportRepId
	JOIN Invoice AS I ON C.CustomerId = I.CustomerId
WHERE E.Title = 'Sales Support Agent' 
	AND I.InvoiceDate LIKE '2009%'
GROUP BY E.LastName) AS Sales
*/