-- Từ bảng Products và Categories, hãy ỉn ra
-- Mã thể loại
-- Tên thể loại
-- Mã sản phẩm
-- Tên sản phẩm
SELECT c.CategoryID, c.CategoryName, p.ProductID, p.ProductName
FROM [dbo].[Products] AS [p], [dbo].[Categories] AS [c]
WHERE c.CategoryID = p.CategoryID;

--Từ bảng Employees và Orders, in ra 
--Mã nhân viên
--Tên nhân viên
--Số lượng đơn hàng mà nhân viên bán được

SELECT o.[EmployeeID], e.LastName, e.FirstName , 
		COUNT(o.[OrderID]) AS [TotalOrders]
FROM [dbo].[Orders] AS o, [dbo].[Employees] AS e
WHERE o.EmployeeID = e.EmployeeID
GROUP BY o.[EmployeeID], e.LastName, e.FirstName;

-- Từ bảng Orders Customer
-- Mã số khách hàng
-- Tên công ty
-- Tên liên hệ
-- Số lượng hàng đã mua
-- Với điều kiện: quốc gia của khách hàng là UK
SELECT c.CustomerID, c.CompanyName, c.ContactName, c.Country, COUNT(o.OrderID) AS [TotalOrders]
FROM [dbo].[Customers] AS c, [dbo].[Orders] AS o
WHERE c.CustomerID = o.CustomerID AND c.Country LIKE 'UK'
GROUP BY c.CustomerID, c.CompanyName, c.ContactName, c.Country;

-- Từ bảng Orders và Shippers
-- Mã nhà vận chuyển
-- Tên công ty vận chuyển
-- Tổng số tiền được vận chuyển (Sum Freight)
-- Và in ra màn hình theo thứ tự sắp xếp tổng số tiền vận chuyển giảm dần
SELECT s.[ShipperID], s.[CompanyName], COUNT(o.Freight) AS [TotalFreight]
FROM [dbo].[Shippers] AS s, [dbo].[Orders] AS o
WHERE s.ShipperID = o.ShipVia
GROUP BY s.ShipperID, s.CompanyName
ORDER BY SUM(o.Freight) DESC;

-- Từ bảng Products và Suppliers
-- Mã nhà cung cấp 
-- Tên công ty
-- Tổng số các sản phẩm khác nhau đã cung cấp 
-- Và chỉ in ra màn hình duy nhất 1 nhà cung cấp có số lượng sp khác nhau nhiều nhất 
SELECT TOP 1 s.SupplierID, s.CompanyName, COUNT(p.ProductID) AS [TotalProducts]
FROM [dbo].[Suppliers] AS s, [dbo].[Products] AS p
WHERE s.SupplierID = p.SupplierID
GROUP BY s.SupplierID, s.CompanyName
ORDER BY COUNT(p.ProductID) DESC;

-- Từ bảng Orders và Orders Details
-- Mã đơn hàng 
-- Tổng số tiền sản phẩm của đơn hàng đó
SELECT o.OrderID, o.CustomerID , SUM(od.UnitPrice * od.Quantity) AS [Total]
FROM  [dbo].[Orders] AS o, [dbo].[Order Details] AS od
WHERE o.OrderID = od.OrderID
GROUP BY o.OrderID, o.CustomerID;

-- Từ Orders, Order Details, Employees
-- Mã đơn hàng
-- Tên nhân viên
-- Tổng số tiền sản phẩm của đơn hàng
SELECT o.OrderID, e.LastName, e.FirstName, SUM(od.UnitPrice * od.Quantity) AS [Total]
FROM [dbo].[Orders] AS o, [dbo].[Employees] AS e, [dbo].[Order Details] AS od
WHERE e.EmployeeID = o.EmployeeID AND o.OrderID = od.OrderID
GROUP BY o.OrderID, e.LastName, e.FirstName;

-- Từ 3 bảng Customers, Orders, Shippers
-- Mã đơn hàng
-- Tên khách hàng
-- Tên công ty vận chuyển
-- Và chỉ in ra các đơn hàng được giao đến 'UK' trong năm 1997
SELECT o.OrderID, c.ContactName, s.CompanyName, YEAR(o.ShippedDate) AS [Year], o.ShipCountry
FROM [dbo].[Orders] AS o, [dbo].[Customers] AS c, [dbo].[Shippers] AS s
WHERE o.CustomerID = c.CustomerID AND o.ShipVia = s.ShipperID 
		AND o.ShipCountry LIKE 'UK' AND YEAR(o.ShippedDate) = 1997;
