-- Liệt kê tất cả các nhân viên đến từ thành phố LonDon
SELECT *
FROM [dbo].[Employees]
WHERE [City] = 'LonDon'
ORDER BY [LastName] ASC;

--Liệt kê tất cả các đơn hàng bị giao muộn, biết rằng ngày cần phải giao hàng
-- là RequireDate, ngày giao hàng thực tế là ShippeDate
SELECT [OrderID], [RequiredDate], [ShippedDate]
		--COUNT(*) AS [NumberOfLatelyDate]
FROM [dbo].[Orders]
WHERE [ShippedDate] > [RequiredDate];

-- Liệt kê tất cả các đơn hàng chi tiết được giảm giá nhiều hơn 10% (Discount > 0.1)
SELECT *
FROM [dbo].[Order Details]
WHERE [Discount] >= 0.1;

--Liệt kê tất cả các đơn hàng được gửi đến quốc gia là "FRANCE"
SELECT *
FROM [dbo].[Orders]
WHERE [ShipCountry] = 'France'
ORDER BY [OrderDate] ASC;

--Liệt kê các sản phẩm có số lượng hàng trong kho (UnitsInStock) lớn hơn 20
SELECT *
FROM [dbo].[Products]
WHERE [UnitsInStock] > 20
ORDER BY [ProductName] ASC;