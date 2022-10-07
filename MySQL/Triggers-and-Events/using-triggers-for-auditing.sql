-- #5

DELETE FROM payments
WHERE payment_id = 11;

-- #4

INSERT INTO payments
VALUES (DEFAULT, 5, 3, '2019-01-01', 10, 1);

-- #3

DROP TRIGGER IF EXISTS payments_after_delete;

DELIMITER $$

CREATE TRIGGER payments_after_delete
	AFTER DELETE ON payments
	FOR EACH ROW
BEGIN
	UPDATE invoices
	SET payment_total = payment_total - OLD.amount
	WHERE invoice_id = OLD.invoice_id;

    INSERT INTO payments_audit
    VALUES (OLD.client_id, OLD.date, OLD.amount, 'Delete', NOW());
END $$

DELIMITER ;

-- #2

DROP TRIGGER IF EXISTS payments_after_insert;

DELIMITER $$

CREATE TRIGGER payments_after_insert
	AFTER INSERT ON payments
	FOR EACH ROW
BEGIN
	UPDATE invoices
    SET payment_total = payment_total + NEW.amount
    WHERE invoice_id = NEW.invoice_id;

    INSERT INTO payments_audit
    VALUES (NEW.client_id, NEW.date, NEW.amount, 'Insert', NOW());
END $$

DELIMITER ;

-- #1

USE sql_invoicing; 

CREATE TABLE payments_audit
(
	client_id 		INT 			NOT NULL, 
    date 			DATE 			NOT NULL,
    amount 			DECIMAL(9, 2) 	NOT NULL,
    action_type 	VARCHAR(50) 	NOT NULL,
    action_date 	DATETIME 		NOT NULL
)