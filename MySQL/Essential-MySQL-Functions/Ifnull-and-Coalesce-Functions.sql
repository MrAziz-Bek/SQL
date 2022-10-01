USE sql_store;

-- COALESCE

SELECT
    order_id,
    COALESCE(shipper_id, comments, 'Not assigned') AS shipper
FROM orders;

-- IFNULL
SELECT
    order_id,
    IFNULL(shipper_id, 'Not assigned') AS shipper
FROM orders;

-- The IFNULL function takes two arguments and returns the first argument if it is not NULL,
-- otherwise, it returns the second argument.

-- The IFNULL function works great with two arguments whereas the COALESCE function works with n arguments. 
-- In case the number of arguments is two, both functions are the same.