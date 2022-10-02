CALL get_payments(NULL, 2);
CALL get_payments(5, 2);
CALL get_payments(5, NULL);
CALL get_payments(1, NULL);
CALL get_payments(NULL, NULL);

-- Write a stored procedure called get_payments
-- with two parameters
--
--      client_id => INT
--      payment_method_id => TINYINT

DELIMITER $$
CREATE PROCEDURE get_payments
(
    client_id INT,
    payment_method_id TINYINT
)
BEGIN
    SELECT *
    FROM payments p 
	WHERE 
    p.client_id = IFNULL(client_id, p.client_id) AND
    p.payment_method = IFNULL(payment_method_id, p.payment_method);
END$$