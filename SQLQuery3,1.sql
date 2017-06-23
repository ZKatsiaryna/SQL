/****** Script for SelectTopNRows command from SSMS  ******/
--SELECT TOP 1000 [TerritoryID]
--      ,[TerritoryDescription]
--      ,[RegionID]
--  FROM [Northwind].[dbo].[Territories]

--2.3.1
  Select LastName, T.TERRITORYDESCRIPTION
  FROM 
  Employees AS E JOIN EmployeeTerritories AS ET ON E.EmployeeID = ET.EmployeeID
  JOIN Territories AS T ON ET.TerritoryID=T.TerritoryID
  WHERE T.RegionID IN (
  SELECT RegionID
  FROM Region WHERE Region.RegionDescription='Western')

 

