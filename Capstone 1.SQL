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
