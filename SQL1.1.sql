	--1.Выбрать в таблице Orders заказы, которые были доставлены после 6 мая 1998 года (колонка ShippedDate) включительно и которые доставлены с ShipVia >= 2. 
	--Запрос должен возвращать только колонки OrderID, ShippedDate и ShipVia. 
	SELECT o.OrderID, o.ShippedDate, o.ShipVia FROM [Northwind].[dbo].[Orders] AS o
	WHERE ShippedDate >=  DATETIMEFROMPARTS(1998,5,6,0,0,0,0) AND ShipVia >= 2
 
	--2.Написать запрос, который выводит только недоставленные заказы из таблицы Orders.
	--В результатах запроса возвращать для колонки ShippedDate вместо значений NULL строку ‘Not Shipped’ (использовать системную функцию CASЕ). 
	--Запрос должен возвращать только колонки OrderID и ShippedDate.
	SELECT o.OrderID,
	CASE 
	WHEN ShippedDate is null  THEN 'Not Shipped' END ShippedDate
	FROM [Northwind].dbo.Orders AS o
	WHERE ShippedDate is null

	--3.	Выбрать в таблице Orders заказы, которые были доставлены после 6 мая 1998 года (ShippedDate) не включая эту дату или которые еще не доставлены.
	--В запросе должны возвращаться только колонки OrderID (переименовать в Order Number) и ShippedDate (переименовать в Shipped Date). 
	--В результатах запроса возвращать для колонки ShippedDate вместо значений NULL строку ‘Not Shipped’, для остальных значений возвращать дату в формате по умолчанию.
	SELECT [Northwind].dbo.Orders.OrderID AS 'Order Number',
	CASE
	WHEN ShippedDate is null  THEN 'Not Shipped' 
	ELSE convert(varchar(25), ShippedDate, 120) END 'Shipped Date'
	FROM  [Northwind].dbo.Orders
	WHERE ShippedDate > DATETIMEFROMPARTS(1998,5,6,0,0,0,0) or ShippedDate IS NULL

