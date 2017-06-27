	--2.4.1.	������ ���� ����������� (������� CompanyName � ������� Suppliers), � ������� ��� 
	--���� �� ������ �������� �� ������ (UnitsInStock � ������� Products ����� 0). ������������ 
	--��������� SELECT ��� ����� ������� � �������������� ��������� IN. 

	SELECT s.CompanyName
	FROM dbo.Suppliers AS s
	WHERE 0 IN (
		SELECT p.UnitsInStock
		FROM dbo.Products AS p
		WHERE s.SupplierID = p.SupplierID
	)

	--2.4.2	������ ���� ���������, ������� ����� ����� 150 �������. ������������ ��������� SELECT.

	SELECT CONCAT(e.LastName, ' ', e.FirstName)
	FROM dbo.Employees AS e
	WHERE 
	(
	SELECT COUNT(*)
	FROM dbo.Orders AS o
	WHERE e.EmployeeID = o.EmployeeID 
	) > 150

	--2.4.3.	������ ���� ���������� (������� Customers), ������� �� ����� �� ������ ������ (��������� �� ������� Orders). ������������ �������� EXISTS.

	SELECT c.CompanyName
	FROM dbo.Customers AS c
	WHERE NOT EXISTS
	(
	SELECT COUNT(*)
	FROM dbo.Orders AS o
	WHERE o.CustomerID = c.CustomerID
	)
