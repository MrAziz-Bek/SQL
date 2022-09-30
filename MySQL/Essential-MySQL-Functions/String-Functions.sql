USE sql_store;

SELECT CONCAT(first_name, ' ', last_name) AS fullname
FROM customers;

-- #

SELECT CONCAT('first', 'last');
-- CONCAT returns concatenated string

SELECT REPLACE('Kindergarten', 'garten', 'garden');
SELECT LOCATE('garten', 'Kindergarten');
-- SELECT LOCATE('n', 'Kindergarten');
SELECT SUBSTRING('Kindergarten', 3, 5);
SELECT RIGHT('Kindergarten', 6);
SELECT LEFT('Kindergarten', 4);

-- LOCATE returns the position of the first occurrence of substring
-- SUBSTRING returns the substring as specified
-- RIGHT returns the specified rightmost number of characters
-- LEFT returns the leftmost number of characters as specified

SELECT TRIM('     Sky     ');
SELECT RTRIM('Sky     ');
SELECT LTRIM('    Sky');

-- TRIM removes leading and trailing spaces
-- RTRIM removes trailing spaces
-- LTRIM removes leading spaces

SELECT LOWER('Sky');
SELECT UPPER('sky');
SELECT LENGTH('sky');

-- LOWER returns the argument in lowercase
-- UPPER converts to uppercase
-- LENGTH returns the length of a string in bytes