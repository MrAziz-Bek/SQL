SELECT
    pm.name AS payment_method,
    SUM(amount) AS total
FROM payments p
JOIN payment_methods pm
    ON pm.payment_method_id = p.payment_method
GROUP BY pm.name WITH ROLLUP