USE test;

SELECT * FROM Products
ORDER BY Price ASC;

SELECT MIN(Price) AS TheCheapest FROM Products;
SELECT MAX(Price) AS TheMostExpensive FROM Products;

SELECT MIN(BirthDate) FROM Employees;
SELECT Max(BirthDate) FROM Employees;

-- 쿼리안에 쿼리 (nested query)
SELECT * FROM Employees
WHERE BirthDate = (SELECT MIN(BirthDate) FROM Employees); -- 주의 : = 연산자 사용시 subquery 결과는 단일
SELECT * FROM Employees
WHERE BirthDate = (SELECT MAX(BirthDate) FROM Employees);

SELECT * FROM Products 
WHERE price = (SELECT MAX(Price) FROM Products);
SELECT * FROM Products 
WHERE price = (SELECT MIN(Price) FROM Products);
