	--2.1.1	Найти общую сумму всех заказов из таблицы Order Details с учетом количества закупленных товаров и скидок по ним. 
	--Результатом запроса должна быть одна запись с одной колонкой с названием колонки 'Totals'.
	SELECT
	SUM(CASE WHEN Discount=0 THEN UnitPrice*Quantity
	ELSE UnitPrice*Quantity*Discount end) AS 'Totals'
	FROM [Northwind].[dbo].[Order Details]

	--2.1.2	По таблице Orders найти количество заказов, которые еще не были доставлены (т.е. в колонке ShippedDate нет значения даты доставки). 
	--Использовать при этом запросе только оператор COUNT. Не использовать предложения WHERE и GROUP.
	SELECT Count(*) - Count(ShippedDate) 
	FROM [Northwind].[dbo].[Orders]

	--2.1.3	По таблице Orders найти количество различных покупателей (CustomerID), сделавших заказы. 
	--Использовать функцию COUNT и не использовать предложения WHERE и GROUP.
	SELECT COUNT (DISTINCT CustomerID) 
	FROM [Northwind].[dbo].[Orders]


