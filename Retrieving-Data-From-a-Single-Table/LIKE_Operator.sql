SELECT *
FROM customers
WHERE last_name NOT LIKE '%b%'

-- [letter or letters]%	  -> means the something starts with [letter or letters]
-- %[letter or letters]%  -> means [letter or letters] can be anywhere in the something
-- %[letter or letters]   -> means the something ends with [letter or letters]
-- '_'  -> means a single character(it could be any character)