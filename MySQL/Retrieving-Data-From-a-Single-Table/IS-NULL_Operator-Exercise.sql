-- Get the orders that are not shipped

SELECT *
FROM orders
WHERE shipped_date IS NULL
-- OR => WHERE shipper_id IS NULL 