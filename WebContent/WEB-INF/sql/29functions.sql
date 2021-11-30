USE test;

-- count: 개수
-- Customers 테이블의 row 수
SELECT COUNT(*) FROM Customers;
SELECT count(*) FROM Customers WHERE Country = 'UK';
SELECT * FROM Customers;
SELECT count(contacName) FROM Customers; -- null은 count 안함

SELECT * FROM Customers ORDER BY Country;
SELECT count(DISTINCT Country) FROM Customers;

SELECT count(DISTINCT Country) FROM Suppliers;
SELECT count(DISTINCT City) FROM Suppliers;

-- 연습 3 : Seafood가 몇번 주문되었는지
SELECT count(*) FROM OrderDetails od JOIN Products p ON od.ProductID = p.ProductID
												   JOIN Categories ct ON p.CategoryID = ct.CategoryID
WHERE ct.CategoryName = 'Seafood';

SELECT count(CategoryID) FROM Categories
JOIN
	Products p ON od.ProductID = p.ProductID
		JOIN
	Categories ct ON p.CategoryID =ct.CategoryID 
    WHERE CategoryName = 'Seafood';

-- 연습 3 : Seafood를 한 번이라도 주문한 적이 있는 고객 수
SELECT * FROM Products;
SELECT * FROM Categories;
SELECT 
    COUNT(DISTINCT ContactName)
FROM
    Customers c
        JOIN
    Orders o ON c.CustomerID = o.CustomerID
        JOIN
    OrderDetails od ON od.OrderID = o.OrderID
        JOIN
    Products p ON p.ProductID = od.ProductID
        JOIN
    Categories ct ON ct.CategoryID = p.CategoryID
WHERE
    CategoryName = 'Seafood';