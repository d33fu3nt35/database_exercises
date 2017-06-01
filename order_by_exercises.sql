USE employees;

# Now add a condition to find everybody with those names who is also male — 441 rows.
SELECT first_name, last_name, gender
FROM employees
WHERE gender = 'M'
      AND (
        first_name = 'Irena'
        OR first_name = 'Vidya'
        OR first_name = 'Maya'
      );

# Find all employees whose last name starts or ends with 'E' — 30,723 rows.
SELECT first_name, last_name
FROM employees
WHERE last_name LIKE 'E%'
      OR last_name LIKE '%E';

# Duplicate the previous query and update it to find all employees whose last name starts and ends with 'E' — 899 rows.
SELECT first_name, last_name
FROM employees
WHERE last_name LIKE 'E%'
      AND last_name LIKE '%E';

# Employees hired in the 90s — 135,214 rows.
SELECT hire_date, first_name, last_name
FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31';

# Find all employees hired in the 90s and born on Christmas — 362 rows.
SELECT hire_date, birth_date, first_name, last_name
FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31'
      AND birth_date LIKE '%12-25%';

# Employees born on Christmas — 842 rows.
SELECT *
FROM employees
WHERE birth_date LIKE '%12-25%';

# Employees with a 'q' in their last name — 1,873 rows.
SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name LIKE '%Q%';

# Find all employees with a 'q' in their last name but not 'qu' — 547 rows.
SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name LIKE '%Q%'
      AND last_name NOT LIKE '%QU%';

# Select all employees with the first name of 'Carl' or 'Karl'.
SELECT *
FROM employees
WHERE first_name = 'Carl'
      OR first_name = 'Karl';

SELECT emp_no, first_name, last_name
FROM employees
WHERE emp_no < 20000
      AND
      last_name IN ('Herber','Baek')
      OR first_name = 'Shridhar';

SELECT emp_no, first_name, last_name
FROM employees
WHERE emp_no < 20000
      AND (
        last_name IN ('Herber', 'Baek')
        OR first_name = 'Shridhar'
      );

SELECT first_name, last_name
FROM employees
ORDER BY last_name DESC, first_name ASC;