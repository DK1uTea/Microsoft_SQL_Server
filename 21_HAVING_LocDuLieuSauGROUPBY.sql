-- Hãy cho bts những khách hàng nào đã đặt nhiều hơn 20 đơn hàng
-- sắp xếp theo thứ tự tổng số đơn hàng giảm dần

SELECT [CustomerID], COUNT([OrderID]) AS [TotalOrders]
FROM [dbo].[Orders]
GROUP BY [CustomerID]
HAVING COUNT([OrderID]) > 20
ORDER BY COUNT([OrderID]) DESC;

-- Hãy lọc ra những nhà cung cấp sản phẩm có tổng số lượng trong kho lớn hơn
-- 30 và có trung bình đơn giá dưới 50
SELECT [SupplierID], SUM([UnitsInStock]) AS [TotalUnitsInStock],
		AVG([UnitPrice]) AS [AvgUnitPrice]
FROM [dbo].[Products]
GROUP BY [SupplierID]
HAVING SUM([UnitsInStock]) > 30 AND AVG([UnitPrice]) < 50;

-- Hãy cho biết tổng số tiền vận chuyển của từng tháng, trong nửa năm sau 
-- của năm 1996, sắp xếp theo tháng tăng dần
SELECT MONTH([ShippedDate]) AS [MONTH], SUM([Freight]) AS [TotalFreight]
FROM [dbo].[Orders]
WHERE [ShippedDate] BETWEEN '1996-07-01' AND '1996-12-31'
GROUP BY MONTH([ShippedDate])
-- HAVING
ORDER BY MONTH([ShippedDate]) ASC;

-- Hãy cho biết tổng số tiền vận chuyển của từng tháng, trong nửa năm sau 
-- của năm 1996, sắp xếp theo tháng tăng dần
-- Tổng tiền vận chuyển lớn hơn 1000$
SELECT MONTH([ShippedDate]) AS [MONTH], SUM([Freight]) AS [TotalFreight]
FROM [dbo].[Orders]
WHERE [ShippedDate] BETWEEN '1996-07-01' AND '1996-12-31'
GROUP BY MONTH([ShippedDate])
HAVING SUM([Freight]) > 1000
ORDER BY MONTH([ShippedDate]) ASC;

-- Hãy lọc ra những thành phố có số lượng đơn hàng > 16
-- và sắp xếp thep số lượng giảm dần
SELECT [ShipCity], COUNT([OrderID]) AS [TotalOrders]
FROM [dbo].[Orders]
GROUP BY [ShipCity]
HAVING COUNT([OrderID]) > 16
ORDER BY COUNT([OrderID]) DESC;
