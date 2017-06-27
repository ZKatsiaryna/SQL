	--2.4.1.	Выдать всех поставщиков (колонка CompanyName в таблице Suppliers), у которых нет 
	--хотя бы одного продукта на складе (UnitsInStock в таблице Products равно 0). Использовать 
	--вложенный SELECT для этого запроса с использованием оператора IN. 

	SELECT s.CompanyName
	FROM dbo.Suppliers AS s
	WHERE 0 IN (
		SELECT p.UnitsInStock
		FROM dbo.Products AS p
		WHERE s.SupplierID = p.SupplierID
	)

	--2.4.2	Выдать всех продавцов, которые имеют более 150 заказов. Использовать вложенный SELECT.

	SELECT CONCAT(e.LastName, ' ', e.FirstName)
	FROM dbo.Employees AS e
	WHERE 
	(
	SELECT COUNT(*)
	FROM dbo.Orders AS o
	WHERE e.EmployeeID = o.EmployeeID 
	) > 150

	--2.4.3.	Выдать всех заказчиков (таблица Customers), которые не имеют ни одного заказа (подзапрос по таблице Orders). Использовать оператор EXISTS.

	SELECT c.CompanyName
	FROM dbo.Customers AS c
	WHERE NOT EXISTS
	(
	SELECT COUNT(*)
	FROM dbo.Orders AS o
	WHERE o.CustomerID = c.CustomerID
	)
