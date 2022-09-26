USE sql_invoicing;

UPDATE invoices
SET 
    payment_total = invoice_total * 0.5,
    payment_date = due_date
WHERE client_id IN
				  (SELECT client_id
                   FROM clients
                   WHERE state IN ('CA', 'NY'));

UPDATE invoices
SET 
    payment_total = invoice_total * 0.5,
    payment_date = due_date
WHERE payment_date IS NULL