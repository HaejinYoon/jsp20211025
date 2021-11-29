SELECT * FROM Categories;
SELECT * FROM Products;

SELECT 
    c.CategoryName, ProductName, p.Unit, p.Price
FROM
    Categories c
        JOIN
    Products p ON c.CategoryID = p.CategoryID
ORDER BY 1 , 2;