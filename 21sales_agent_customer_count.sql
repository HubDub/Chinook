Select EmployeeId as "Sales Agent ID",
	Count(CustomerId) as "# Customers"
From Customer	
	Join Employee  
Where EmployeeId = SupportRepId
Group By EmployeeId