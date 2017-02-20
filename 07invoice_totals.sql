Select Total as "Invoice Total", 
	C.FirstName ||" "||	C.LastName as "Customer Name", 
	C.Country, 
	E.FirstName ||" "|| E.LastName as "Sales Agent"
From Invoice I, Customer C, Employee E
Where E.EmployeeId = C.SupportRepId
	And C.CustomerId = I.CustomerId
Order By C.LastName


/* OR 
SELECT 	i.Total, 
		c.LastName || ", " || c.FirstName AS 'Customer Name',
		i.BillingCountry, 
		e.LastName || ", " || e.FirstName AS 'Sales Agent'
FROM Invoice AS i
	JOIN Customer AS c ON i.CustomerId = c.CustomerId
	JOIN EMPLOYEE AS e ON c.SupportRepId = e.EmployeeId
ORDER BY c.LastName
*/
