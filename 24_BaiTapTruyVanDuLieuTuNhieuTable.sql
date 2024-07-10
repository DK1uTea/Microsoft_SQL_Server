-- Từ Products và Categories, hãy tìm các sản phẩm thuộc danh mục Seafood 
-- Mã thể loại 
-- Tên thể loại
-- Mã sản phẩm
-- Tên sản phẩm

SELECT p.ProductID, p.ProductName, c.CategoryID, c.CategoryName
FROM [dbo].[Products] AS p, [dbo].[Categories] AS c
WHERE p.CategoryID = c.CategoryID AND c.CategoryName LIKE 'Seafood';


-- Products và Suppliers, hãy tìm các sản phẩm đc cung cấp từ Đức
-- Mã nhà cung cấp 
-- Quốc gia
-- Mã sản phẩm
-- Tên sản phẩm

SELECT s.SupplierID, s.Country, p.ProductID, p.ProductName
FROM dbo.Products AS p, dbo.Suppliers AS s
WHERE s.SupplierID = p.SupplierID AND s.Country = 'Germany';


-- Từ 3 bảng Customers, Orders, Shippers
-- Mã đơn hàng
-- Tên khách hàng
-- Tên công ty vận chuyển
-- Và chỉ in ra các đơn hàng của khách hàng đến từ thành phố 'London'

SELECT o.OrderID, c.ContactName, c.City, s.CompanyName
FROM dbo.Customers AS c, dbo.Orders AS o, dbo.Shippers AS s
WHERE o.CustomerID = c.CustomerID AND o.ShipVia = s.ShipperID
		AND c.City LIKE 'London';

-- Từ 3 bảng Customers, Orders, Shippers
-- Mã đơn hàng
-- Tên khách hàng
-- Tên công ty vận chuyển
-- Ngày yêu cầu chuyển hàng
-- Ngày giao hàng
-- Và chỉ in ra các đơn hàng bị giao muộn hơn quy định
-- RequiredDate < ShippedDate

SELECT o.OrderID, o.RequiredDate, o.ShippedDate, c.ContactName, s.CompanyName
FROM dbo.Orders AS o, dbo.Customers AS c, dbo.Shippers AS s
WHERE o.CustomerID = c.CustomerID AND o.ShipVia = s.ShipperID
		AND o.RequiredDate < o.ShippedDate;

-- Give these shipcountries for which customers don't come from the
-- United States
-- Select only this countries which is over than 100 orders
-- Display ShipCountry and Number of Orders

SELECT o.ShipCountry, COUNT(o.OrderID) AS [TotalOrders]
FROM dbo.Orders AS o, dbo.Customers AS c
WHERE o.CustomerID = c.CustomerID AND c.Country NOT LIKE 'USA'
GROUP BY o.ShipCountry, c.Country
HAVING COUNT(o.OrderID) > 100;
