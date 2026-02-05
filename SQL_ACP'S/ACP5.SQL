CREATE TABLE operator(
    name TEXT,
    salary REAL
    
);

INSERT INTO operator(name,salary) VALUES 
('AYSHA', 8000),
('YOOSUF', 9000),
('YOONUS',4300),
('KHADIJAH', 64000);

SELECT SUM(salary) FROM operator;

SELECT AVG(salary) FROM operator;

SELECT COUNT(DISTINCT salary) FROM operator;

SELECT MIN(salary), MAX(salary) FROM operator;