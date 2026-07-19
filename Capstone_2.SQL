CREATE TABLE Salesman1 (
    salesman_id INT PRIMARY KEY,
    name VARCHAR(50),
    city VARCHAR(50),
    com DECIMAL(4,2)
);

CREATE TABLE Customer1(
    customer_id INT PRIMARY KEY,
    cust_name VARCHAR(50),
    city VARCHAR(50),
    grade INT,
    salesman_id INT,
    FOREIGN KEY (salesman_id) REFERENCES Salesman1(salesman_id)
);

CREATE TABLE Orders1 (
    ord_no INT PRIMARY KEY,
    purch_amt DECIMAL,
    ord_date DATE,
    customer_id INT,
    salesman_id INT,
    FOREIGN KEY (customer_id) REFERENCES Customer1(customer_id),
    FOREIGN KEY (salesman_id) REFERENCES Salesman1(salesman_id)
);    

INSERT INTO Salesman1(salesman_id, name, city, com) VALUES
(5001,'Ayaana','New York',0.15),
(5002,'Aysha','Abu Dhabi',0.13),
(5005,'Aizac','Dubai',0.11),
(5006,'Ulaa','Male',0.14),
(5007,'Yoonus','Kuala Lumpur',0.13),
(5003,'Khadijah','Abu Dhabi',0.12);

SELECT * FROM Salesman1

INSERT INTO Customer1 (customer_id, cust_name, city, grade, salesman_id) VALUES
(3002, 'Yoosuf','New York',100,5001),
(3006, 'Farhana','New York',100,5001),
(3007, 'Arshad','Abu Dhabi',200,5002),
(3003, 'Amina','Dubai',100,5005),
(3001, 'Hafsa','Male',100,5006);

SELECT * FROM Customer1

INSERT INTO Orders1 (ord_no, purch_amt, ord_date, customer_id, salesman_id)
VALUES
(70001, 150.50, '2012-10-05', 3005, 5002),
(70009, 270.65, '2012-09-10', 3001, 5005),
(70002, 65.26, '2012-10-05', 3002, 5001),
(70004, 110.50, '2012-08-17', 3009, 5003),
(70007, 948.50, '2012-09-10', 3005, 5002);

SELECT * FROM Orders1

SELECT c.cust_name AS cust_name,
       s.name AS salesman_name,
       c.city
FROM Customer1 c
JOIN Salesman1 s 
ON c.city = s.city;      