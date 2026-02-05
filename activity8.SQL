CREATE TABLE IF NOT EXISTS Salesman(
    Salesman_id TEXT PRIMARY_KEY,
    name TEXT,
    city TEXT,
    comission TEXT
);
INSERT INTO Salesman(Salesman_id,name,city,comission)
VALUES
("5001","James Hoog","New York","0.5"),
("5002","Nail Knite","Paris","0.13"),
("5003","Pit Alex","London","0.11"),
("5004","Mc Lyon","Paris","0.51"),
("5005","Paul Adam","Rome","0.12");

SELECT * from Salesman
DROP TABLE Salesman

CREATE TABLE IF NOT EXISTS Customer(
    Customer_id TEXT PRIMARY_KEY,
    Cust_name TEXT,
     city TEXT,
     grade TEXT,
     Salesman_id TEXT
);

INSERT INTO Customer(Customer_id,Cust_name,city,grade,Salesman_id)
VALUES
("3001","nick rimando","new york","100","5001"),
("3002","brad davis","new york","200","5002"),
("3003","graham zusi","california","200","5003"),
("3004","julian green","london","300","5003"),
("3005","jozy guzan","berlin","300","5002");

SELECT * FROM Customer

CREATE TABLE IF NOT EXISTS Orders(
    Ord_no TEXT PRIMARY_KEY,
    purch_amt REAL,
    ord_date TEXT,
    Customer_id TEXT,
    Salesman_id TEXT
);

INSERT INTO Orders(Ord_no,purch_amt,ord_date,Customer_id,Salesman_id)
VALUES
("70001",150.5,"12/2/2012","3001","5005"),
("70005",110.5,"06/7/2012","3002","5004"),
("70003",234.25,"12/3/2012","3003","5003"),
("70007",712.52,"12/7/2012","3004","5002"),
("70002",2400.6,"30/1/2012","3005","5001");

SELECT * FROM Orders

SELECT Customer.Cust_name,Salesman.name
FROM Customer
JOIN Salesman ON Customer.city = Salesman.city;

UPDATE Customer SET City="New York" WHERE City="new york"

SELECT Customer.Cust_name,Salesman.name
FROM Customer
JOIN Salesman ON Customer.Salesman_id = Salesman.Salesman_id;

SELECT Orders.ord_no, Customer.Cust_name, Orders.Customer_id,Orders.Salesman_id
FROM Orders
JOIN Customer ON Orders.Customer_id = Customer.Customer_id
JOIN Salesman ON Orders.Salesman_id = Salesman.Salesman_id
WHERE Customer.city <> Salesman.city;

SELECT Orders.Ord_no, Customer.Cust_name
FROM Orders 
JOIN Customer ON Orders.Customer_id = Customer.Customer_id;

SELECT Customer.Cust_name AS "Customer", Customer.grade AS "Grade"
FROM Orders
JOIN Salesman ON Orders.Salesman_id = Salesman.Salesman_id
JOIN Customer ON Orders.Customer_id = Customer.Customer_id
WHERE Customer.grade IS NOT NULL;

SELECT Customer.Cust_Name AS "Customer",
Customer.City AS "City",
Salesman.name AS "Salesman",
Salesman.comission
FROM Customer
JOIN Salesman ON Customer.Salesman_id = Salesman.Salesman_id
WHERE Salesman.comission BETWEEN 0.12 AND 0.14;

SELECT Orders.ord_no, Customer.cust_name,Salesman.comission AS "comission%",
Orders.purch_amt * Salesman.comission AS "comission"
FROM Orders
JOIN Salesman ON Orders.Salesman_id = Salesman.Salesman_id
JOIN Customer ON Orders.Customer_id = Customer.Customer_id
WHERE Customer.grade >= 200;

SELECT * FROM Customer
JOIN Orders ON Customer.Customer_id = Orders.Customer_id
WHERE Orders.ord_date = '12/3/2012';

