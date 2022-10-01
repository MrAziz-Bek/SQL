SELECT
    CONCAT(first_name, ' ', last_name) AS fullname,
    COALESCE(phone, 'Unknown') AS phone
FROM customers;