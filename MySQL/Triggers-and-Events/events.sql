DELIMITER $$

CREATE EVENT yearly_delete_stale_audit_rows
ON SCHEDULE
    -- if u wanna execut only once: AT '<date>'
    -- if u wanna execut on a regular basis: EVERY <number> <hour/year/etc...>
    EVERY 1 YEAR STARTS '2019-01-01' ENDS '2019-01-01'
DO BEGIN
    DELETE FROM payments
    WHERE action_date < NOW() - INTERVAL 1 YEAR; 
END $$

DELIMITER ;

SHOW VARIABLES LIKE 'event%';
SET GLOBAL event_schedular = OFF;