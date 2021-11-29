USE test;

SELECT * FROM mytable27Customer; -- 3, 4, 5, 6
SELECT * FROM mytable28Tel; -- 1, 3, 4

SELECT * FROM mytable27Customer c Full outer join mytable28Tel t on c.id = t.customerId; -- mysql 지원 안함

	
