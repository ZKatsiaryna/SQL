/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP 1000 [CustomerID]
      ,[CompanyName]
      ,[ContactName]
      ,[ContactTitle]
      ,[Address]
      ,[City]
      ,[Region]
      ,[PostalCode]
      ,[Country]
      ,[Phone]
      ,[Fax]
  FROM [Northwind].[dbo].[Customers]

	  --1.3.2
	  SELECT c.CustomerID, c.Country FROM [Northwind].[dbo].[Customers] AS c
	  WHERE Country Between 'b' and 'h'
	  ORDER BY Country

	  --1.3.3
	  SELECT c.CustomerID, c.Country FROM [Northwind].[dbo].[Customers] AS c
	  WHERE Country Like '[b-g]%'