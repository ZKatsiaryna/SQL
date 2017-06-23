/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP 1000 [EmployeeID]
      ,[LastName]
      ,[FirstName]
      ,[Title]
      ,[TitleOfCourtesy]
      ,[BirthDate]
      ,[HireDate]
      ,[Address]
      ,[City]
      ,[Region]
      ,[PostalCode]
      ,[Country]
      ,[HomePhone]
      ,[Extension]
      ,[Photo]
      ,[Notes]
      ,[ReportsTo]
      ,[PhotoPath]
  FROM [Northwind].[dbo].[Employees]


  --2.2.6
  SELECT LastName AS "Employee",
  (SELECT LastName FROM Employees E2 WHERE E2.EmployeeID=E1.ReportsTo) AS "Boss"
  FROM [dbo].[Employees] E1

