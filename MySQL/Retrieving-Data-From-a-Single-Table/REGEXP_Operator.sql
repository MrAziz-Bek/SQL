SELECT *
FROM customers
WHERE last_name REGEXP 'e[]';

-- REGEXP is extremely powerful for searching strings, it allows us to search for more complex patterns
-- '^' beginning
-- '$' end
-- '|' logical or
-- '[abcd]' used to match any single chars listed in brackets
-- '[a-f]' used to represent a range
--    WHERE last_name REGEXP '[gim]e' -> means before letter 'e' may be has letter g or i or m
--    WHERE last_name REGEXP '[a-h]e' -> means before letter 'e' may be has letter start from letter a to letter h

-- WHERE last_name LIKE '%field%' <-> WHERE last_name REGEXP 'field'