-- Select clients with at least two invoices

SELECT *
FROM clients
WHERE client_id IN (
    SELECT client_id
    FROM invoices
    GROUP BY client_id
    HAVING COUNT(*) >= 2);
-- ANY operator compares the given value to each subquery value and returns those values that satisfy the condition.
-- ANY <-> SOME
-- `= ANY` <-> `IN`