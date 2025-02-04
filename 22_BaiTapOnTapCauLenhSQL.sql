﻿-- Hãy cho biết những khách hàng nào đã đặt nhiều hơn 20 đơn hàng
-- sắp xếp theo thứ tự tổng số đơn hàng giảm dần
SELECT [CustomerID], COUNT([OrderID]) AS [TotalOrders]
FROM [dbo].[Orders]
GROUP BY [CustomerID]
HAVING COUNT([OrderID]) > 20
ORDER BY COUNT([OrderID]) DESC;

-- Hãy cho biết các nhân viên có tổng số đơn hàng lớn hơn hoặc bằng 100
-- sắp xếp theo tổng số đơn hàng giảm dần
SELECT [EmployeeID], COUNT([OrderID]) AS [TotalOrders]
FROM [dbo].[Orders]
GROUP BY [EmployeeID]
HAVING COUNT([OrderID]) >= 100
ORDER BY COUNT([OrderID]) DESC;

-- Hãy cho biết những thể loại nào (CategoryID) 
-- có số sản phẩm khác nhau lơn hơn 11
SELECT [CategoryID], COUNT([ProductID]) AS [TotalProducts]
FROM [dbo].[Products]
GROUP BY [CategoryID]
HAVING COUNT([ProductID]) > 11;

-- Hãy cho biết những thể loại nào (CategoryID) 
-- có tổng số lượng sản phẩm trong kho (UnitsInStock) lớn hơn 350
SELECT [CategoryID], SUM([UnitsInStock]) AS [TotalUnitsInStock]
FROM [dbo].[Products]
GROUP BY [CategoryID]
HAVING SUM([UnitsInStock]) > 350;

-- Hãy cho biết những quốc gia nào có nhiều hơn 7 đơn hàng
SELECT [ShipCountry], COUNT([OrderID]) AS [TotalOrders]
FROM [dbo].[Orders]
GROUP BY [ShipCountry]
HAVING COUNT([OrderID]) > 7;

-- Hãy cho bts những ngày nào có nhiều hơn 5 đơn hàng được giao 
-- sắp xếp tăng dần theo ngày giao hàng
SELECT [ShippedDate], COUNT(*) AS [TotalOrders]
FROM [dbo].[Orders]
GROUP BY [ShippedDate]
HAVING COUNT(*) > 5
ORDER BY [ShippedDate] ASC;

-- Hãy cho biết quốc gia bắt đầu bằng chữ 'A' hoặc chứ 'G'
-- và có số lượng đơn hàng lớn hơn 29
SELECT [ShipCountry], COUNT(*) AS [TotalOrders]
FROM [dbo].[Orders]
WHERE [ShipCountry] LIKE 'A%' OR [ShipCountry] LIKE 'G%'
GROUP BY [ShipCountry]
HAVING COUNT(*) > 29
ORDER BY COUNT(*) DESC;

-- Hãy cho biết những thành phố nào có số lượng đơn hàng được giao là khác
-- 1 và 2, ngày đặt hàng từ ngày '1997-04-01' đến '1997-08-31'
SELECT [ShipCity], COUNT([ShippedDate]) AS [TotalOrders]
FROM [dbo].[Orders]
WHERE [OrderDate] BETWEEN '1997-04-01' AND '1997-08-31'
GROUP BY [ShipCity]
HAVING COUNT([ShippedDate]) NOT IN (1, 2);