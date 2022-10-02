-- To call Stored Procedure
CALL get_clients();

DELIMITER $$
CREATE PROCEDURE get_clients()
BEGIN
    SELECT * FROM clients;
END$$

DELIMITER ;