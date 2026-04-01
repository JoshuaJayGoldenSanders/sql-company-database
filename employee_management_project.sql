DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS departments;

CREATE TABLE departments (
department_id INTEGER PRIMARY KEY,
department_name TEXT
);

CREATE TABLE employees (
employee_id INTEGER PRIMARY KEY,
first_name TEXT,
last_name TEXT,
salary INTEGER,
department_id INTEGER,
hire_date TEXT,
FOREIGN KEY (department_id) REFERENCES departments(department_id)
);

INSERT INTO departments VALUES (1,'Engineering');
INSERT INTO departments VALUES (2,'Sales');
INSERT INTO departments VALUES (3,'HR');

INSERT INTO employees VALUES (1,'John','Smith',75000,1,'2023-01-10');
INSERT INTO employees VALUES (2,'Sarah','Jones',68000,1,'2022-05-15');
INSERT INTO employees VALUES (3,'Mike','Brown',52000,2,'2024-02-20');
INSERT INTO employees VALUES (4,'Lisa','White',60000,2,'2021-11-03');
INSERT INTO employees VALUES (5,'David','Lee',58000,3,'2020-07-19');

SELECT first_name,last_name,department_name
FROM employees
JOIN departments
ON employees.department_id = departments.department_id;

SELECT *
FROM employees
WHERE salary > 60000;

SELECT department_name,
AVG(salary)
FROM employees
JOIN departments
ON employees.department_id = departments.department_id
GROUP BY department_name;

SELECT *
FROM employees
ORDER BY salary DESC
LIMIT 1;

SELECT department_name,
COUNT(employee_id)
FROM employees
JOIN departments
ON employees.department_id = departments.department_id
GROUP BY department_name;
