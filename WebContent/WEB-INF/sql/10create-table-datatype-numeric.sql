USE test;

CREATE TABLE mytable5 (
	name VARCHAR(255),
    age INT
);

DESC mytable5;

INSERT INTO mytable5 (name, age) VALUES ('son', 77);

SELECT * FROM mytable5;

CREATE TABLE mytable6 (
	name VARCHAR(255),
    score DOUBLE
);

INSERT INTO mytable6 (name, score) VALUES ('park', 3.14);

SELECT * FROM mytable6;

create table mytable7 (
	col1 DECIMAL(3),
    col2 DECIMAL(5, 2)
);
insert into mytable7 (col1, col2) values (100, 100.33);

select * from mytable7;

insert into mytable7 (col1) values(1100);
insert into mytable7 (col2) values(100.123);
insert into mytable7 (col2) values(1100.12);