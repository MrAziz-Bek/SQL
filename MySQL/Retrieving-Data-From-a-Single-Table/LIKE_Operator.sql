SELECT *
FROM customers
WHERE last_name NOT LIKE '%b%'

-- [letter(s)]%	  -> means the something starts with [letter(s)]
-- %[letter(s)]%  -> means [letter(s)] can be anywhere in the something
-- %[letter(s)]   -> means the something ends with [letter(s)]
-- '_'  -> means a single character(it could be any character)