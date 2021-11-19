SELECT * FROM Customers WHERE CustomerID <10;

SELECT * FROM Customers WHERE Country = 'Mexico';

-- and : 두 조건 모두 만족
SELECT * FROM Customers WHERE CustomerID <10 AND Country = 'Mexico';