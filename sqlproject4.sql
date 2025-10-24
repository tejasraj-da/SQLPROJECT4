create database productdb;
use productdb;
CREATE TABLE Products (
    ProductID INT,
    ProductName VARCHAR(100),
    Category VARCHAR(50),
    Price DECIMAL(10, 2),
    StockQuantity INT
);

INSERT INTO Products (ProductID, ProductName, Category, Price, StockQuantity) VALUES
(1, 'Laptop', 'Electronics', 1200.00, 10),
(2, 'Mouse', 'Electronics', 25.50, 50),
(3, 'Coffee Maker', 'Appliances', 80.00, 20),
(4, 'Desk Chair', 'Furniture', 150.00, 15),
(5, 'Keyboard', 'Electronics', 75.00, 30),
(6, 'Blender', 'Appliances', 45.00, 25);

SELECT
    Category,
    COUNT(ProductID) AS NumberOfProducts
FROM
    Products
GROUP BY
    Category;

SELECT
    Category,
    SUM(Price * StockQuantity) AS TotalStockValue
FROM
    Products
GROUP BY
    Category;
    
    SELECT
    Category,
    AVG(Price) AS AveragePrice
FROM
    Products
GROUP BY
    Category;
    
   SELECT
    Category,
    AVG(Price) AS AveragePrice
FROM
    Products
GROUP BY
    Category
HAVING
    AVG(Price) > 50.00; 