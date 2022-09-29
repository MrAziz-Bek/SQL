-- Find clients without invoices

-- Subquery
SELECT *
FROM clients
WHERE client_id NOT IN(
    SELECT DISTINCT client_id
    FROM invoices);


-- Join
SELECT *
FROM clients
LEFT JOIN invoices USING (client_id)
WHERE invoice_id IS NULL;

-- Subqueries can be slower than LEFT [OUTER] JOIN, but in my opinion their strength is slightly higher readability. BUT use JOINS. It's better