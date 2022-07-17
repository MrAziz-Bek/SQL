-- Get the customers whose
--    address contain TRAIL or AVENUE
--    phone numbers end with 9

SELECT *
FROM customers
WHERE address LIKE '%trail%' OR
	  address LIKE '%avenue%';
      
SELECT *
FROM customers
WHERE phone LIKE '%9';