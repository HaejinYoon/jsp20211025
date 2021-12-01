USE test;

SELECT * FROM Customers
WHERE CustomerName = 'Alfreds Futterkiste';
;
SELECT * FROM Customers
WHERE CustomerName LIKE 'A%'; -- % : 아무거나 0개이상 일치 

-- 연습1 : Employees 에서 LastName에 'u'가 포함된 직원들 조회
SELECT * FROM Employees WHERE LastName LIKE '%u%';

-- 연습2 : Employees 에서 Notes에 'BA'가 포함된 직원들 조회
SELECT * FROM Employees WHERE Notes LIKE '%BA%';

SELECT * FROM Customers
WHERE CustomerName LIKE 'Ernst Hande_'; -- _:한글자 아무거나