-- Select invoices larger than all invoices of client 3

USE sql_invoicing;

-- Solution with subquery
SELECT *
FROM invoices
WHERE invoice_total > (
    SELECT MAX(invoice_total)
    FROM invoices
    WHERE client_id = 3);

-- Solution with All keyword
SELECT *
FROM invoices
WHERE invoice_total > ALL (
    SELECT invoice_total
    FROM invoices
    WHERE client_id = 3);

-- ALL is used to select all records of a SELECT STATEMENT.
-- It compares a value to every value in a list or results from a query