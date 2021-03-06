	--1.3.1 Выбрать все заказы (OrderID) из таблицы Order Details (заказы не должны повторяться), где встречаются продукты с количеством от 3 до 10 включительно – это колонка Quantity в таблице Order Details. 
	--Использовать оператор BETWEEN. Запрос должен возвращать только колонку OrderID.
	SELECT DISTINCT d.OrderID FROM dbo.[Order Details] AS d
	WHERE d.Quantity Between 3 and 10

	--1.3.2	Выбрать всех заказчиков из таблицы Customers, у которых название страны начинается на буквы из диапазона b и g. 
	--Использовать оператор BETWEEN. Проверить, что в результаты запроса попадает Germany. Запрос должен возвращать только колонки CustomerID и Country и отсортирован по Country.
	SELECT c.CustomerID, c.Country FROM [Northwind].[dbo].[Customers] AS c
	WHERE Country Between 'b' and 'h'
	ORDER BY Country

	--1.3.3	Выбрать всех заказчиков из таблицы Customers, у которых название страны начинается на буквы из диапазона b и g, не используя оператор BETWEEN. 
	SELECT c.CustomerID, c.Country FROM [Northwind].[dbo].[Customers] AS c
	WHERE Country Like '[b-g]%'

	--1.4 1.	В таблице Products найти все продукты (колонка ProductName), где встречается подстрока 'chocolade'. 
	--Известно, что в подстроке 'chocolade' может быть изменена одна буква 'c' в середине - найти все продукты, которые удовлетворяют этому условию. 
	  SELECT ProductId, ProductName FROM [Northwind].[dbo].[Products]
	  WHERE ProductName Like '%cho_olade%'
