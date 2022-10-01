-- Create a view to see the balance for each client.

-- clients_balance:

-- client_id
-- name
-- balance

CREATE VIEW clients_balance AS
SELECT
    c.client_id,
    c.name,
    SUM(invoice_total - payment_total) AS balance
FROM clients c
JOIN invoices i USING (client_id)
GROUP BY client_id, name