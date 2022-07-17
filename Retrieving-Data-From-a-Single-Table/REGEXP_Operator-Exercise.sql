-- Get the customers whose
--    first names are ELKA or AMBUR
--    last names end with EY or ON
--    last names start with MY or contains SE
--    last names contain B followed by R or U

SELECT *
FROM customers
WHERE first_name REGEXP '^ELKA$|^AMBUR$';

SELECT *
FROM customers
WHERE last_name REGEXP 'EY$|ON$';

SELECT *
FROM customers
WHERE last_name REGEXP '^MY|SE';

SELECT *
FROM customers
WHERE last_name REGEXP 'b[RU]';