--Задание 2.4. Использование подзапросов
--1.	Выдать всех поставщиков (колонка CompanyName в таблице Suppliers), у которых нет 
--хотя бы одного продукта на складе (UnitsInStock в таблице Products равно 0). Использовать 
--вложенный SELECT для этого запроса с использованием оператора IN. 

SELECT suppliers.CompanyName
FROM dbo.Suppliers suppliers
WHERE 0 IN (
	SELECT products.UnitsInStock
	FROM dbo.Products products
	WHERE suppliers.SupplierID = products.SupplierID
)

--2.	Выдать всех продавцов, которые имеют более 150 заказов. Использовать вложенный SELECT.

SELECT CONCAT(employees.LastName, ' ', employees.FirstName)
FROM dbo.Employees employees
WHERE 
(
SELECT COUNT(*)
FROM dbo.Orders orders
WHERE employees.EmployeeID = orders.EmployeeID 
) > 150

----3.	Выдать всех заказчиков (таблица Customers), которые не имеют ни одного заказа (подзапрос по таблице Orders). Использовать оператор EXISTS.

SELECT customers.CompanyName
FROM dbo.Customers customers
WHERE NOT EXISTS
(
SELECT COUNT(*)
FROM dbo.Orders orders
WHERE orders.CustomerID = customers.CustomerID
)
