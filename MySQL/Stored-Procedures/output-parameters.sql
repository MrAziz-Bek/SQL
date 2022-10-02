DELIMITER $$
CREATE PROCEDURE get_unpaid_invoices_for_client
(
    client_id INT,
    OUT invoices_count INT,
    OUT invoices_total DECIMAL(9, 2)
)
BEGIN
    SELECT 
        COUNT(*), SUM(invoice_total)
        INTO invoices_count, invoice_total
    FROM invoices i
    WHERE i.client_id = client_id AND
        payment_total = 0;
END$$
DELIMITER ;