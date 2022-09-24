SELECT
    o.order_id,
    c.first_name
FROM orders o
NATURAL JOIN customers c;

-- With 'NATURAL JOIN' we don't explicitly specify column names. 
-- So database engine will look at these two tables and it will join them based on the common columns