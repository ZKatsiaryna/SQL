
--2.2.4
--SELECT dbo.Customers.ContactName, dbo.Employees.FirstName, dbo.Employees.LastName, dbo.Employees.City
--FROM dbo.Customers, dbo.Employees
--WHERE dbo.Customers.City=dbo.Employees.City

--2.2.5
--SELECT CustomerID, City
--FROM dbo.Customers C1
--WHERE EXISTS(SELECT * FROM dbo.Customers C2 WHERE C1.CITY=C2.City AND C1.CustomerID<>C2.CustomerID)



