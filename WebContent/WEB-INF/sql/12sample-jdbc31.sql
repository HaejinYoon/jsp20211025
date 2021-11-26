use test;

CREATE TABLE mytable10(
	col1 int,
    col2 double,
    col3 DEC(10, 3),
    col4 CHAR(3),
    col5 VARCHAR(255),
    col6 DATE,
    col7 DATETIME
);

select * from mytable10;




CREATE TABLE mytable11 (
	id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255),
    age INT,
    birth DATE,
    insertDate DATETIME DEFAULT NOW(),
    modifyDate DATETIME DEFAULT NOW()
);

select * from mytable11;
DESC mytable11;

UPDATE mytable11 set modifyDate=now() where id=1;