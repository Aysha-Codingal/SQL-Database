CREATE TABLE IF NOT EXISTS product_details (
    product_id INTEGER PRIMARY KEY,
    product_name TEXT,
    category TEXT,
    price REAL,
    stock_quantity INTEGER
);

INSERT INTO product_details (product_id, product_name, category, price, stock_quantity) VALUES
(101, 'Laptop', 'Electronics', 1200.00, 15),
(102, 'Smartphone', 'Electronics', 800.00, 25),
(103, 'Headphones', 'Accessories', 150.00, 50),
(104, 'Keyboard', 'Accessories', 45.00, 30),
(105, 'Monitor', 'Electronics', 300.00, 10);

SELECT product_name, price, (price * 0.90) AS discounted_price FROM product_details;

SELECT * FROM product_details WHERE price > 500;

SELECT * FROM product_details WHERE category = 'Electronics' AND stock_quantity < 20;

SELECT * FROM product_details WHERE price BETWEEN 100 AND 500;