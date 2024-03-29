USE sql_invoicing;

SELECT
    p.date,
    c.name AS client,
    p.amount,
    pm.name AS payment_method
FROM clients c
JOIN payments p USING (client_id)
JOIN payment_methods pm
    ON p.payment_method = pm.payment_method_id;