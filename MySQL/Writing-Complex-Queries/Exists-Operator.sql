-- Select clients that have an invoice

SELECT *
FROM clients c
WHERE EXISTS (
    SELECT client_id
    FROM invoices
    WHERE client_id = c.client_id
)

-- The EXISTS operator is used to test for the existence of any record in a subquery.