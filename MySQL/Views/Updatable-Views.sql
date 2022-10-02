UPDATE invoices_with_balance
SET due_date = DATE_ADD(due_date, INTERVAL 2 DAY)
WHERE invoice_id = 1;

DELETE FROM invoices_with_balance
WHERE invoice_id = 1;

CREATE OR REPLACE VIEW invoices_with_balance AS
SELECT
    invoice_id,
    number,
    client_id,
    invoice_total,
    payment_total,
    invoice_total - payment_total AS balance,
    invoice_date,
    due_date,
    payment_date
FROM invoices
WHERE (invoice_total - payment_total) > 0;

-- In MySQL, views are not only query-able but also updatable. 
-- It means that you can use the INSERT or 
-- UPDATE statement to insert or update rows of the base table through the updatable view. 
-- In addition, you can use DELETE statement to remove rows of the underlying table through the view.

-- However, to create an updatable view, the SELECT statement that defines the view must not contain any of the following elements:
    -- Aggregate functions such as MIN, MAX, SUM, AVG, and COUNT.
    -- DISTINCT
    -- GROUP BY clause.
    -- HAVING clause.
    -- UNION or UNION ALL clause.
    -- Left join or outer join.
    -- Subquery in the SELECT clause or in the WHERE clause that refers to the table appeared in the FROM clause.
    -- Reference to non-updatable view in the FROM clause.
    -- Reference only to literal values.
    -- Multiple references to any column of the base table.