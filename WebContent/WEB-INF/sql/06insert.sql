USE test;

SELECT * FROM Customers ORDER BY CustomerID DESC;

INSERT INTO Customers VALUES (92, 'Kim', 'Kim', 'GangNam', 'Seoul', '88888', 'Korea');

INSERT INTO Customers (CustomerID, CustomerName) VALUES (93, 'Lee');

INSERT INTO Customers (CustomerID, ContactName) VALUES (94, 'Choi');

INSERT INTO Customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country) VALUES (95, 'Park', 'Jisung', 'YeokSam', 'Seoul', '77777', 'Korea');

-- 96, 97 추가 sql 작성

INSERT INTO Customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country) VALUES (96, 'Haejin Yoon', 'Harry', 'Dongcheon-ro 153', 'Yong-in', '16822', 'Korea');

INSERT INTO Customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country) VALUES (97, 'Mary', 'Riely', '73 4rd Street', 'Sacramento', '95819', 'USA');

INSERT INTO Customers (CustomerName) VALUES ('aespa');
INSERT INTO Customers (CustomerName) VALUES ('BTS');

INSERT INTO Customers (CustomerName, ContactName) VALUES ('Karina', 'aespa');
INSERT INTO Customers (CustomerName, ContactName) VALUES ('Yeji', 'ITZY');

UPDATE Customers SET Address='JYP', City='Seoul' WHERE CustomerID=101;