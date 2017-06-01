SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name IN ('Irena', 'Vidya', 'Maya');

SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name LIKE 'E%';

SELECT hire_date, first_name, last_name
FROM employees
WHERE hire_date BETWEEN 1990 AND 1999;

SELECT * FROM employees WHERE birth_date LIKE '%12-25%';

SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name LIKE '%Q%';