-- Đếm số lượng khách hàng có trong bảng (Customers)
SELECT COUNT(*) AS [NumberOfCustomers]
FROM [dbo].[Customers];

SELECT COUNT([CustomerID]) AS [NumberOfCustomers]
FROM [dbo].[Customers];

-- Tính tổng số tiền vận chuyển (Freight) của tất cả các đơn hàng
SELECT SUM([Freight]) AS [SumFreight]
FROM [dbo].[Orders];

-- Tính trung bình số lượng đặt hàng (Quantity) của tất cả sản phẩm trong (OrderDetails)
SELECT AVG([Quantity]) AS [AverageQuantity]
FROM [dbo].[Order Details];

-- Đếm số lượng, tính tổng số lượng hàng trong kho và trung bình giá của các sản phẩm
-- có trong bảng Product
SELECT	COUNT(*) AS [Number], 
		SUM([UnitsInStock]) AS [Total],
		AVG([UnitPrice]) AS [AvgUnitPrice]
FROM [dbo].[Products];

-- Đếm số lượng từ bảng đơn hàng từ bảng Orders
SELECT COUNT([OrderID]) AS [NumberOfOrder]
FROM [dbo].[Orders];

SELECT COUNT(*) AS [NumberOfOrder]
FROM [dbo].[Orders];

-- Từ bảng [Order Details] hãy tính trung bình cho cột UnitPrice, và
-- tính tổng cho cột Quantity
SELECT	AVG([UnitPrice]) AS [AvgUnitPrice],
		SUM([Quantity]) AS [SumQuantity]
FROM [dbo].[Order Details];