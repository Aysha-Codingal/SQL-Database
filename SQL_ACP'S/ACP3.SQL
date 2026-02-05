CREATE TABLE workers (
    name TEXT,
    dept TEXT,
    salary REAL
);

INSERT INTO workers VALUES 
('Alice', 'IT', 5000),
('Bob', 'HR', 3000),
('Charlie', 'IT', 4500),
('David', 'Sales', 4000);

SELECT SUM(salary) FROM workers;

SELECT AVG(salary) FROM workers;

SELECT COUNT(DISTINCT dept) FROM workers;

SELECT MIN(salary), MAX(salary) FROM workers;