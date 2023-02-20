-- Get the category of products
USE northwind;
SELECT category
FROM products;

-- Products made by Dell
SELECT *
FROM products
WHERE product_name
LIKE 'Dell%';

-- All orders shipped to Philadelphia
SELECT *
FROM orders
WHERE ship_state
IN ('Pennsylvania');

-- employees start with W
SELECT first_name, last_name
FROM employees;
WHERE last_name
LIKE 'W%';

-- Customer zip codes start with 55
SELECT *
from customers
WHERE postal_code
LIKE '55%';

-- Customer zip codes end with 0
SELECT *
FROM customers;
WHERE postal_code
LIKE '%0';

-- customers with org email
SELECT first_name, last_name, email
FROM customers 
WHERE email
LIKE '%.org';

-- customer with 202 area code
SELECT first_name, last_name, phone
FROM customers 
WHERE phone
LIKE '%202%';

-- same thing ordered by last name first name
SELECT last_name, first_name, phone
FROM customers 
WHERE phone
LIKE '%202%'
ORDER BY last_name asc, first_name asc;