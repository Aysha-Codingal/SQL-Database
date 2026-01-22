create table supplier1 (
sno integer primary key,
sname text,
status integer,
city text);


insert into supplier1 (sno , sname, status, city) values(
101, 'Umar', 20, 'Dubai'),
(102, 'Maryam', 30, ' Abu_dhabi'),
(103, 'Khadijah', 40, 'Sharjah'),
(104, 'Fathima', 50, 'Ajman');

select * from supplier1;