SELECT order_id, o.customer_id, first_name, last_name
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id;

-- INNER JOIN <-> JOIN
-- FROM orders o || FROM customers c   --> means replacing something table to another something