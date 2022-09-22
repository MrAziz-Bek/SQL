SELECT
    o.order_id,
    c.first_name,
    sh.name AS shipper
FROM orders o
JOIN customers c
    USING (customer_id)
LEFT JOIN shippers sh
    USING (shipper_id);

SELECT *
FROM order_items oi
JOIN order_item_notes oin
    USING (order_id, product_id);

-- If the column name is exactly the same, we can replace it on USING clause, which is simpler and shorter
-- ON o.customer_id = c.customer_id <-> USING (customer_id)
-- ON oi.order_id = oin.order_id AND oi.product_id = oin.product_id <-> USING(order_id, product_id)