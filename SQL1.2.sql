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

	--1.
	SELECT ContactName, Country FROM [Northwind].dbo.Customers
	WHERE Country IN ('USA', 'Canada')
	ORDER BY ContactName

	--2.
	SELECT ContactName, Country FROM [Northwind].dbo.Customers
	WHERE Country not in ('USA', 'Canada')
	ORDER BY ContactName

	--3.
	SELECT DISTINCT Country FROM [Northwind].dbo.Customers
	ORDER BY Country DESC