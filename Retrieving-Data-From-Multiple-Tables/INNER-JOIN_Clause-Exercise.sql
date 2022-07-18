SELECT name, oi.product_id, oi.quantity * oi.unit_price AS total
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id