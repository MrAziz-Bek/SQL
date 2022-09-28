SELECT
    state,
    city,
    SUM(invoice_total) AS total_sales
FROM invoices i
JOIN clients using (client_id)
-- WHERE invoice_date >= '2019-07-01'
GROUP BY state, city
-- ORDER BY total_sales DESC;

-- The GROUP BY Statement in SQL is used to arrange identical data into groups with the help of some functions.
-- i.e if a particular column has same values in different rows then it will arrange these rows in a group