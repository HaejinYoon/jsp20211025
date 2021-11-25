use test;

create TABLE mytable9 (
	col1 date,
    col2 DATETIME
);

INSERT into mytable9 (col1) VALUES('2021-11-25');

SELECT * FROM mytable9;

INSERT INTO mytable9 (col2) VALUES ('2021-11-25 12:34:10');

SELECT now();

insert into mytable9 (col1, col2) values (now(), now());