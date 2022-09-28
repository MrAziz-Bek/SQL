USE sql_invoicing;

SELECT
    state,
    city,
    SUM(invoice_total) AS total_sales
FROM invoices i
JOIN clients c USING (client_id)
GROUP BY state, city WITH ROLLUP

-- The ROLLUP operator is used with the GROUP BY clause.
-- It is used to create subtotals and grand totals for a set of columns.
-- The summarized amounts are created based on the columns passed to the ROLLUP operator.