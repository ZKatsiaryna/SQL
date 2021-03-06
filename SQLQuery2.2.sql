	--2.2.1 По таблице Orders найти количество заказов с группировкой по годам. В результатах запроса надо возвращать две колонки c названиями Year и Total.
	 --Написать проверочный запрос, который вычисляет количество всех заказов.
	SELECT YEAR(OrderDate) AS YEAR, COUNT(OrderID) AS Total
	FROM [Northwind].[dbo].[Orders] 
	GROUP BY YEAR(OrderDate)

	SELECT Count(OrderID)
	FROM [Northwind].[dbo].[Orders] 

	--2.2.2 По таблице Orders найти количество заказов, cделанных каждым продавцом. Заказ для указанного продавца – это любая запись в таблице Orders, где в колонке EmployeeID задано значение для данного продавца. 
	--В результатах запроса надо возвращать колонку с именем продавца (Должно высвечиваться имя полученное конкатенацией LastName & FirstName.
	--Эта строка LastName & FirstName должна быть получена отдельным запросом в колонке основного запроса. Также основной запрос должен использовать группировку по EmployeeID.) с названием колонки ‘Seller’ и колонку c количеством заказов возвращать с названием 'Amount'.
	--Результаты запроса должны быть упорядочены по убыванию количества заказов. 
	SELECT Count(OrderID) as 'Amount', 
	(SELECT LastName+','+ FirstName FROM [Employees] WHERE [Employees].EmployeeID=[Orders].EmployeeID) AS 'Seller'
	FROM [Northwind].[dbo].[Orders]
	GROUP BY EmployeeID
	ORDER BY 'Amount' DESC

	--2.2.3 По таблице Orders найти количество заказов, сделанных каждым продавцом и для каждого покупателя. Необходимо определить это только для заказов, сделанных в 1998 году. 
	SELECT CustomerID, [EmployeeID], COUNT(*) AS 'Total'
	FROM [Northwind].[dbo].[Orders] 
	GROUP BY CustomerID, [EmployeeID], YEAR(OrderDate)
	HAVING Year(OrderDate)=1998
	ORDER BY CustomerID

	--2.2.4 Найти покупателей и продавцов, которые живут в одном городе. Если в городе живут только один или несколько продавцов, или только один или несколько покупателей, то информация о таких покупателя и продавцах не должна попадать в результирующий набор.
	--Не использовать конструкцию JOIN. 
	SELECT dbo.Customers.ContactName, dbo.Employees.FirstName, dbo.Employees.LastName, dbo.Employees.City
	FROM dbo.Customers, dbo.Employees
	WHERE dbo.Customers.City=dbo.Employees.City

	--2.2.5 Найти всех покупателей, которые живут в одном городе. 
	SELECT CustomerID, City
	FROM dbo.Customers C1
	WHERE EXISTS(SELECT * FROM dbo.Customers C2 WHERE C1.CITY=C2.City AND C1.CustomerID<>C2.CustomerID)

	--2.2.6 По таблице Employees найти для каждого продавца его руководителя.
	SELECT LastName AS "Employee",
	(SELECT LastName FROM Employees E2 WHERE E2.EmployeeID=E1.ReportsTo) AS "Boss"
	FROM [dbo].[Employees] E1
