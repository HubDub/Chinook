Select E.EmployeeId, 
	E.LastName ||" "|| E.FirstName as "Sales Agent", 
	Sum(I.Total)
From Employee E
	Join Customer C
	Join Invoice I
Where E.EmployeeId = C.SupportRepId
	And C.CustomerId  = I.CustomerId
Group By E.EmployeeId
Order By Sum(I.Total) Desc

/* ANOTHER OPTION: 
SELECT 	E.FirstName || " " || E.LastName AS 'Sales Agent',
		SUM(I.Total) AS 'Total Sales'
FROM Employee AS E
	JOIN Customer AS C ON E.EmployeeId = C.SupportRepId
	JOIN Invoice AS I ON C.CustomerId = I.CustomerId
GROUP BY E.LastName
HAVING E.Title = 'Sales Support Agent'
*/