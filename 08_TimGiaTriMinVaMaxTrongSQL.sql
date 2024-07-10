-- Tìm giá trị thấp nhất của các sản phẩm trong bảng Products
SELECT MIN([UnitPrice]) AS [MinPrice]
FROM [dbo].[Products];

-- Lấy ra ngày đặt hàng gần đây nhất từ bảng Orders
SELECT MAX([OrderDate]) AS [MaxOrderDate]
FROM [dbo].[Orders];

-- Tìm ra sản phẩm (lấy mã và tên) có số lượng hàng tồn kho (UnitslnStock) lớn nhất
SELECT [ProductID], [ProductName], [UnitsInStock]
FROM [dbo].[Products]
WHERE [UnitsInStock] = (SELECT MAX([UnitsInStock]) FROM [dbo].[Products]);

-- Số lượng hàng tồn kho (UnitslnStock) lớn nhất
SELECT MAX(UnitsInStock) AS [MaxUnitInStock]
FROM dbo.Products;

-- Tìm nhân viên có tuổi đời lớn nhất 
SELECT LastName, FirstName, BirthDate
FROM dbo.Employees
WHERE BirthDate = (SELECT MIN(BirthDate) FROM dbo.Employees);