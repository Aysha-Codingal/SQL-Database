CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    department_id INT,
    salary DECIMAL(10, 2)
);

INSERT INTO employees (employee_id, first_name, last_name, department_id, salary) 
VALUES 
    (101, 'Neena', 'Kochhar', 10, 17000.00),
    (102, 'Lex', 'De Haan', 20, 9000.00),
    (103, 'Alexander', 'Maneul', 30, 6000.00),
    (104, 'Bruce', 'Ernst', 20, 4800.00),
    (105, 'David', 'Maneul', 10, 8500.00);

SELECT first_name, last_name, department_id, salary
FROM employees
WHERE salary > 8000;

SELECT first_name, last_name, department_id
FROM employees
WHERE last_name = 'Maneul';

SELECT first_name, salary
FROM employees
ORDER BY first_name ASC;

SELECT employee_id, SUM(salary) AS total_salary
FROM employees
GROUP BY employee_id;

SELECT employee_id, AVG(salary) AS average_salary
FROM employees
GROUP BY employee_id;

SELECT *
FROM employees
WHERE employee_id = 101 AND first_name = 'Neena';

SELECT COUNT(first_name) AS total_first_names
FROM employees;