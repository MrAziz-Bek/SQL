-- Alter

ALTER EVENT yearly_delete_stale_audit_rows ENABLE -- or DISABLE

-- Drop

DROP EVENT IF EXISTS yearly_delete_stale_audit_rows

-- View

SHOW EVENTS LIKE 'yearly%';