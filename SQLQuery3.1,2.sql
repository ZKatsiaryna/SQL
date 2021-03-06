/****** Script for SelectTopNRows command from SSMS  ******/
--SELECT TOP 1000 [TerritoryID]
--      ,[TerritoryDescription]
--      ,[RegionID]
--  FROM [Northwind].[dbo].[Territories]

	--2.3.1 Определить продавцов, которые обслуживают регион 'Western' (таблица Region). 
	Select LastName, T.TERRITORYDESCRIPTION
	FROM 
	Employees AS E JOIN EmployeeTerritories AS ET ON E.EmployeeID = ET.EmployeeID
	JOIN Territories AS T ON ET.TerritoryID=T.TerritoryID
	WHERE T.RegionID IN (
	SELECT RegionID
	FROM Region WHERE Region.RegionDescription='Western')

	--2.3.2 2.	Выдать в результатах запроса имена всех заказчиков из таблицы Customers	и суммарное количество их заказов из таблицы Orders.
	 --Принять во внимание, что у некоторых заказчиков нет заказов, но они также должны быть выведены в результатах запроса. 
	 --Упорядочить результаты запроса по возрастанию количества заказов.
	SELECT customers.CustomerID, COUNT(customers.CustomerID)
	FROM dbo.Customers customers
	LEFT JOIN dbo.Orders ON customers.CustomerID = dbo.Orders.CustomerID
	GROUP BY customers.CustomerID
	ORDER BY COUNT(customers.CustomerID)
 

