INSERT INTO orders_archived
SELECT *
FROM orders
WHERE order_date < '2019-01-01'

-- A Subquery or Inner query or a Nested query is a query within another SQL query and embedded within the WHERE clause.

-- CREATE TABLE orders_archived AS SELECT * FROM orders