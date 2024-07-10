-- Tính số lượng sp còn lại trong kho (UnitsInStock) sau khi bán hết các 
-- sp đã được đặt hàng (UnitsOnOrder)
-- StockRemaining = UnitsInStock - UnitsOnOrder
SELECT	[ProductID], 
		[ProductName], 
		[UnitsInStock],
		[UnitsOnOrder],
		([UnitsInStock] - [UnitsOnOrder]) AS [StockRemaining]
FROM [dbo].[Products]
ORDER BY [ProductName];

-- Tính giá trị đơn hàng chi tiết cho tất cả các sản phẩm trong bảng OrderDetails
-- OrderDetailValue = UnitPrice*Quantity
SELECT	*,
		([UnitPrice]*[Quantity]) AS [OrderDetailvalue]
FROM [dbo].[Order Details];

-- Tính tỷ lệ giá vận chuyển đơn đặt hàng (Freight) trung bình của các đơn hàng
-- trong bảng Orders so với giá trị vận chuyển của đơn hàng lớn nhất (MaxFreight)
-- FreightRatio = AVG(Freight)/MAX(Freight)
SELECT (AVG(Freight)/MAX(Freight)) AS [FreightRatio]
FROM [dbo].[Orders];

-- Liệt kê danh sách các sản phẩm, và giá (UnitPrice) của từng sản phẩm sẽ được 
-- giảm đi 10%
-- C1: Dùng phep nhân + phép chia
-- C2: Chỉ được dùng phép nhân
SELECT *, ([UnitPrice]*90)/100 AS [DiscountedPrice]
FROM [dbo].[Products];

SELECT *, ([UnitPrice]*0.9) AS [DiscountedPrice]
FROM [dbo].[Products];