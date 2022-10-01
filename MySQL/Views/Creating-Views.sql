USE sql_invoicing;

CREATE VIEW sales_by_client AS
SELECT
    c.client_id,
    c.name,
    SUM(invoice_total) AS total_sales
FROM clients c
JOIN invoices i USING (client_id)
GROUP BY client_id, name;

-- A view is a virtual table based on the result-set of an SQL statement.
-- A view contains rows and columns, just like a real table.
-- The fields in a view are fields from one or more real tables in the database.