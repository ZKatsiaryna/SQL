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
  select ContactName, Country from [Northwind].dbo.Customers
  where Country IN ('USA', 'Canada')
  order By ContactName

  --2.
 select ContactName, Country from [Northwind].dbo.Customers
 WHERE Country not in ('USA', 'Canada')
 order By ContactName

 --3.
select DISTINCT Country from [Northwind].dbo.Customers
order by Country DESC