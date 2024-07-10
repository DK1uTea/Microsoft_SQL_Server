-- Liet ke cac don hang co ngay dat hang gan nhat
SELECT *
FROM dbo.Orders o
WHERE O.OrderDate = (
	SELECT MAX(OrderDate)
	FROM dbo.Orders
);

-- Liet ke tat ca cac san pham ma khong co don dat hang nao mua chung
SELECT *
FROM dbo.Products p
WHERE p.ProductID NOT IN (
	SELECT DISTINCT ProductID
	FROM dbo.[Order Details]
);

SELECT DISTINCT ProductID
FROM dbo.[Order Details];


-- Lấy thông tin về các đơn hàng và tên các sp thuộc các đơn hàng 
-- chưa được giao cho khách
SELECT o.OrderID, p.ProductName
FROM dbo.Orders AS o
INNER JOIN dbo.[Order Details] od
ON o.OrderID = od.OrderID
INNER JOIN dbo.Products AS p
ON p.ProductID = od.ProductID
WHERE o.OrderID IN (
	SELECT OrderID
	FROM dbo.Orders
	WHERE ShippedDate IS NULL
);

SELECT OrderID
FROM dbo.Orders
WHERE ShippedDate IS NULL;


-- Lấy thông tin về các sản phẩm có số lượng tồn kho 
-- ít hơn số lượng tồn kho trung bình của tất cả các sản phẩm
SELECT *
FROM dbo.Products p
WHERE P.UnitsInStock > (
	SELECT AVG(UnitsInStock)
	FROM dbo.Products
);

SELECT AVG(UnitsInStock)
FROM dbo.Products


-- Lấy thông tin về các khách hàng có tổng giá trị đơn hàng lớn nhất
SELECT c.CustomerID, c.ContactName, c.CompanyName, od.UnitPrice*od.Quantity AS Price
FROM dbo.Orders o
INNER JOIN dbo.Customers c
ON o.CustomerID = c.CustomerID
INNER JOIN dbo.[Order Details] od
ON od.OrderID = o.OrderID
WHERE od.UnitPrice*od.Quantity = (
	SELECT MAX(UnitPrice*Quantity)
	FROM dbo.[Order Details]
);

SELECT MAX(UnitPrice*Quantity)
FROM dbo.[Order Details]