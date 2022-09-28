SELECT 
    MAX(invoice_total) AS highest,
    MIN(invoice_total) AS lowest,
    AVG(invoice_total) AS average,
    SUM(invoice_total * 1.1) AS total,
    COUNT(DISTINCT client_id) AS total_records
FROM invoices
WHERE invoice_date > '2019-07-01';

SELECT 
    MAX(payment_date) AS highest,
    MIN(invoice_total) As lowest,
    AVG(invoice_total) AS average
FROM invoices;

-- MAX()
-- MIN()
-- AVG()
-- SUM()
-- COUNT()

-- An aggregate function in SQL performs a calculation on multiple values and returns a single value