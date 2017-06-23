/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP 1000 [OrderID]
      ,[CustomerID]
      ,[EmployeeID]
      ,[OrderDate]
      ,[RequiredDate]
      ,[ShippedDate]
      ,[ShipVia]
      ,[Freight]
      ,[ShipName]
      ,[ShipAddress]
      ,[ShipCity]
      ,[ShipRegion]
      ,[ShipPostalCode]
      ,[ShipCountry]
  FROM [Northwind].[dbo].[Orders]

--2.2.2
  SELECT Count(OrderID) as 'Amount', 
  (SELECT LastName+','+ FirstName FROM [Employees] WHERE [Employees].EmployeeID=[Orders].EmployeeID) AS 'Seller'
  FROM [Northwind].[dbo].[Orders]
  GROUP BY EmployeeID
  ORDER BY 'Amount' DESC