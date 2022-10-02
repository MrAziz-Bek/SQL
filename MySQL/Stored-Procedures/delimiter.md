- When writing SQL statements, you use the semicolon (;) to separate two statements like the following example:
```
SELECT * FROM products;
SELECT * FROM customers;
```

- A MySQL client program such as MySQL Workbench or mysql program uses the delimiter (;) to separate statements and executes each statement separately.

- However, a stored procedure consists of multiple statements separated by a semicolon (;).

- If you use a MySQL client program to define a stored procedure that contains semicolon characters, the MySQL client program will not treat the whole stored procedure as a single statement, but many statements.

- Therefore, you must redefine the delimiter temporarily so that you can pass the whole stored procedure to the server as a single statement.

- To redefine the default delimiter, you use the DELIMITER command: