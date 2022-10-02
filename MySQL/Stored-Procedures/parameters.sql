DROP PROCEDURE IF EXISTS get_clients_by_state;

CALL get_clients_by_state('CA'); -- CA => California

DELIMITER $$
CREATE PROCEDURE get_clients_by_state
(
    state CHAR(2)
)
BEGIN
    SELECT * FROM clients c
    WHERE c.state = state;
END$$

DELIMITER ;