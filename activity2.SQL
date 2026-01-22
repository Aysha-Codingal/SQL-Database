create table if not exists salesman1 (
sid integer,
name text,
city text,
commission real);

insert into salesman1 (sid, name,city, commission) VALUES
(1001, 'Arshad', 'New York', 0.20),
(1001, 'Farhana', 'Paris', 0.15),
(1001, 'Aysha', 'London', 0.20),
(1001, 'Yoosuf', 'New Jersey', 0.15);

select * from salesman1;

create table if not exists orders1(
ordid integer Primary key,
purch_amt real,
ord_date date,
customerid integer,
salesmanid integer)

insert into orders1 (ordid, purch_amt, ord_date, customerid, salesmanid)
VALUES (101,3400,'11/12/2025',101,1001),
(102,3400,'11/12/2025',10,1002),
(103,4000,'13/12/2025',11,1001),
(104,6400,'16/12/2025',12,1003),
(105,9000,'15/12/2025',13,1004);

select * from orders1