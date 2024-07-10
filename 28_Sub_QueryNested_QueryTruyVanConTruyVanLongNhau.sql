-- Liệt kê ra toàn bộ sản phẩm 
SELECT ProductID, ProductName, UnitPrice
FROM dbo.Products;

-- Tìm giá trung bình của các sản phẩm
SELECT AVG(UnitPrice)
FROM dbo.Products;

-- Lọc những sản phẩm có giá > giá trung bình
SELECT ProductID, ProductName, UnitPrice
FROM dbo.Products
WHERE UnitPrice > 28.4962;

SELECT ProductID, ProductName, UnitPrice
FROM dbo.Products
WHERE UnitPrice > (
	SELECT AVG(UnitPrice)
	FROM dbo.Products
);

-- Lọc ra những khách hàng có số đơn hàng > 10
SELECT c.CustomerID, c.CompanyName, COUNT(o.OrderID) AS [TotalOrders]
FROM dbo.Customers AS c
LEFT JOIN dbo.Orders AS o
ON o.CustomerID = c.CustomerID
GROUP BY c.CustomerID, c.CompanyName
HAVING COUNT(o.OrderID) > 10;

-- Sub query
SELECT * 
FROM dbo.Customers
WHERE CustomerID IN (
	SELECT CustomerID
	FROM dbo.Orders 
	GROUP BY CustomerID
	HAVING COUNT(OrderID) > 10
);

SELECT CustomerID
FROM dbo.Orders 
GROUP BY CustomerID
HAVING COUNT(OrderID) > 10;

-- Tính tổng tiền cho từng đơn hàng
SELECT o.*, (
		SELECT SUM(od.Quantity*od.UnitPrice)
		FROM dbo.[Order Details] AS od
		WHERE o.OrderID = od.OrderID
	) AS [Total]
FROM dbo.Orders AS o

-- Lọc ra tên sản phẩm và tổng số đơnh hàng của sản phẩm
SELECT p.ProductID, p.ProductName, (
				SELECT COUNT(*)
				FROM dbo.[Order Details] od
				WHERE od.ProductID = p.ProductID
		) AS [TotalOrders]
FROM dbo.Products p;

SELECT ProductName, TotalOrders
FROM (
	SELECT p.ProductID, p.ProductName, (
				SELECT COUNT(*)
				FROM dbo.[Order Details] od
				WHERE od.ProductID = p.ProductID
		) AS [TotalOrders]
	FROM dbo.Products p
) as Temp;

-- In ra mã đơn hàng và số lượng sản phẩm của đơn hàng đó 
SELECT o.OrderID, (
		SELECT COUNT(*)
		FROM dbo.[Order Details] od
		WHERE od.OrderID = o.OrderID
	) AS [TotalProducts]
FROM dbo.Orders o;