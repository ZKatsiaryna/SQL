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

	--1. 
	SELECT o.OrderID, o.ShippedDate, o.ShipVia FROM [Northwind].[dbo].[Orders] AS o
	WHERE ShippedDate >=  DATETIMEFROMPARTS(1998,5,6,0,0,0,0) AND ShipVia >= 2
 
	--2. 
	SELECT o.OrderID,
	CASE 
	WHEN ShippedDate is null  THEN 'Not Shipped' END ShippedDate
	FROM [Northwind].dbo.Orders AS o
	WHERE ShippedDate is null

	--3.
	SELECT [Northwind].dbo.Orders.OrderID AS 'Order Number',
	CASE
	WHEN ShippedDate is null  THEN 'Not Shipped' 
	ELSE convert(varchar(25), ShippedDate, 120) END 'Shipped Date'
	FROM  [Northwind].dbo.Orders
	WHERE ShippedDate > DATETIMEFROMPARTS(1998,5,6,0,0,0,0) or ShippedDate IS NULL

