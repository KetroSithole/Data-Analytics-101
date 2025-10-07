CREATE DATABASE SalesDB;
GO

USE SalesDB;
GO


IF OBJECT_ID('dbo.SalesData', 'U') IS NULL
BEGIN
    CREATE TABLE dbo.SalesData (
        ID INT IDENTITY(1,1) PRIMARY KEY,
        Product NVARCHAR(100),
        Category NVARCHAR(100),
        Price DECIMAL(10,2),
        Quantity INT,
        SaleDate DATE
    );
END
GO

INSERT INTO dbo.SalesData (Product, Category, Price, Quantity, SaleDate)
VALUES
('Laptop', 'Electronics', 1200.50, 10, '2025-10-01'),
('Mouse', 'Electronics', 25.75, 50, '2025-10-02'),
('Desk Chair', 'Furniture', 150.00, 20, '2025-10-03'),
('Notebook', 'Stationery', 5.50, 100, '2025-10-04'),
('Pen', 'Stationery', 1.25, 200, '2025-10-05');
GO


SELECT * FROM dbo.SalesData;