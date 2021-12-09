use test;
desc mytable11;
ALTER TABLE mytable11 ADD COLUMN ;
    
    Update mytable11 set insertDate='1992-07-18 15:58:22', modifyDate= '1992-07-18 15:58:22' WHERE name='Haejin';
    select * from mytable11;
    
    delete from mytable11 where id>= 7;
    
DROP TABLE mytable11;

SELECT
			p.ProductName, c.CategoryName
		FROM
			Products p
		JOIN
			Categories c 
		ON
			p.CategoryID = c.CategoryID
		WHERE
			c.CategoryName = 'Beverages' AND p.Price <10;
;
SELECT * FROM Categories;
