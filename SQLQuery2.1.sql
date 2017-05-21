/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP 1000 [OrderID]
      ,[ProductID]
      ,[UnitPrice]
      ,[Quantity]
      ,[Discount]
  FROM [Northwind].[dbo].[Order Details]

--2.1
	SELECT
	SUM(CASE WHEN Discount=0 THEN UnitPrice*Quantity
	ELSE UnitPrice*Quantity*Discount end) AS 'Totals'
	FROM [Northwind].[dbo].[Order Details]
