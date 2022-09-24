-- 1st example
SELECT
    o.order_id,
    o.order_date,
    'Active' AS status
FROM orders o
WHERE o.order_date >= '2019-01-01'
UNION
SELECT
    o.order_id,
    o.order_date,
    'Archived' AS status
FROM orders o
WHERE o.order_date < '2019-01-01';

-- 2nd example
SELECT name AS full_name
FROM shippers
UNION
SELECT first_name
FROM customers;

-- remember that number of columns that each query returns should be equal otherwise you are going to get an error