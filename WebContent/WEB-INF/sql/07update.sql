SELECT * FROM Customers ORDER BY CustomerID DESC;

UPDATE Customers
SET Address = 'yeoksam'
WHERE CustomerID = 102;

UPDATE Customers
SET Address = 'mancity', City = 'Suwon', PostalCode = '33333'
WHERE CustomerID = 102;

-- JDBC용
UPDATE Customers
SET 
	CustomerName=?,
	ContactName=?,
	Address=?,
	City=?,
	PostalCode=?,
	Country=?
WHERE
	CustomerID = ?