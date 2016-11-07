Select FirstName ||" "|| LastName as "Full Name", Country
From Customer
Where Country != "USA"
Order By Country