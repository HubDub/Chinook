Select EmployeeId as "Sales Agent ID",
	Count(CustomerId) as "# Customers"
From Customer	
	Join Employee  
Where EmployeeId = SupportRepId
Group By EmployeeId

/* OR 
SELECT 	E.FirstName || " " || E.LastName AS 'Sales Agent',
		COUNT(C.CustomerId) AS '# of Customers'
FROM Employee AS E
	JOIN Customer AS C ON E.EmployeeId = C.SupportRepId
GROUP BY E.LastName
HAVING E.Title = 'Sales Support Agent';
*/