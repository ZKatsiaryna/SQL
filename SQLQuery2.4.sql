--������� 2.4. ������������� �����������
--1.	������ ���� ����������� (������� CompanyName � ������� Suppliers), � ������� ��� 
--���� �� ������ �������� �� ������ (UnitsInStock � ������� Products ����� 0). ������������ 
--��������� SELECT ��� ����� ������� � �������������� ��������� IN. 

SELECT suppliers.CompanyName
FROM dbo.Suppliers suppliers
WHERE 0 IN (
	SELECT products.UnitsInStock
	FROM dbo.Products products
	WHERE suppliers.SupplierID = products.SupplierID
)

--2.	������ ���� ���������, ������� ����� ����� 150 �������. ������������ ��������� SELECT.

SELECT CONCAT(employees.LastName, ' ', employees.FirstName)
FROM dbo.Employees employees
WHERE 
(
SELECT COUNT(*)
FROM dbo.Orders orders
WHERE employees.EmployeeID = orders.EmployeeID 
) > 150

----3.	������ ���� ���������� (������� Customers), ������� �� ����� �� ������ ������ (��������� �� ������� Orders). ������������ �������� EXISTS.

SELECT customers.CompanyName
FROM dbo.Customers customers
WHERE NOT EXISTS
(
SELECT COUNT(*)
FROM dbo.Orders orders
WHERE orders.CustomerID = customers.CustomerID
)
