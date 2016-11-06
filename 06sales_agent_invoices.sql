Select FirstName, LastName, InvoiceId
From Employee
Join Invoice
where Title = "Sales Support Agent"
Order By LastName