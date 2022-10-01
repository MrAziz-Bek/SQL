SELECT
    order_id,
    order_date,
    IF(YEAR(order_date) = YEAR(NOW()), 
        'Active', 
        'Archived') AS category
FROM orders

-- IF(express, return_this_first, otherwise_return_this_second)