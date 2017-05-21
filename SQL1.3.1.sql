/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP 1000 [OrderID]
      ,[ProductID]
      ,[UnitPrice]
      ,[Quantity]
      ,[Discount]
  FROM [Northwind].[dbo].[Order Details]

  --1.3.1
  SELECT DISTINCT d.OrderID FROM dbo.[Order Details] AS d
  WHERE d.Quantity Between 3 and 10

