SELECT
    client_id,
    SUM(invoice_total) AS total_sales,
    COUNT(*) AS number_of_invoices
FROM invoices
GROUP BY client_id
HAVING total_sales > 500 AND number_of_invoices > 5

-- The HAVING clause is used in the SELECT statement
-- to specify filter conditions for a group of rows or aggregates.