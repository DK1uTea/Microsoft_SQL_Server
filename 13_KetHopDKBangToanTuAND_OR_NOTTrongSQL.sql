-- Liệt kê tất cả các sp có sl trong kho (UnitsInStock) thuộc khoảng
-- nhỏ hơn 50 hoặc lớn hơn 100
SELECT *
FROM [dbo].[Products]
WHERE [UnitsInStock] < 50 OR [UnitsInStock] > 100;

-- Liệt kê tất cả các đơn hàng được giao đến Brazil đã bị giao muộn, biết rằng 
-- ngày cần phải giao hàng là RequireDate, ngày giao hàng thực tế là ShippedDate.
SELECT *
FROM [dbo].[Orders]
WHERE [ShipCountry] = 'Brazil' AND [ShippedDate] > [RequiredDate];

-- Liệt kê tất cả các sản phẩm có giá dưới 100 đô và mã thể loại khác 1
-- Lưu ý: Dùng NOT
SELECT *
FROM [dbo].[Products]
WHERE NOT([UnitPrice] >= 100 OR [CategoryID] = 1);

-- Hãy liệt kê tất cả các đơn hàng có giá vận chuyển Freight 
-- trong khoảng [50, 100] đô la
SELECT *
FROM [dbo].[Orders]
WHERE [Freight] >=50 AND [Freight] <= 100;

-- Liệt kê các sp có sl hàng trong kho (UnitsInStock) lớn hơn 20 và số
-- lượng hàng trong đơn hàng (UnitsOnOrder) nhỏ hơn 20.
SELECT *
FROM [dbo].[Products]
WHERE [UnitsInStock] > 20 AND [UnitsOnOrder] < 20;
