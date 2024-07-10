-- Lấy companyName và postalCode và đặt tên thay thế là Tên công ty và mã bưu điện
SELECT	[CompanyName] AS [Tên công ty],
		[PostalCode] AS [Mã bưu điện],
		[City] AS [Thành phố]
FROM dbo.Customers;

-- Lấy LastName và FirstName và đổi tên thành "Họ", "Tên"
SELECT	[LastName] AS [Họ và tên lót],
		[FirstName] AS [Tên]
FROM dbo.Employees;

-- Lấy ra 15 dòng đầu tiên tất cả các cột trong bảng Orders
-- đặt tên thay thế cho bảng Orders là "o"
SELECT TOP 15 [o].*
FROM dbo.Orders AS [o];

SELECT TOP 5	[p].[ProductName] AS [Tên sản phẩm],
				[p].[SupplierID] AS [Mã nhà cung cấp],
				[p].[CategoryID] AS [Mã thể loại]
FROM [dbo].[Products] AS [p];