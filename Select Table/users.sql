SELECT * FROM users WHERE email = 'xuyentran1998@gmail.com' AND password = MD5('12345678');

SELECT * FROM users WHERE email = 'xuyentran1998@gmail.com' OR email = 'ngocxuyen111@gmail.com' ;

# SELECT * FROM table
INNER JOIN table2 ON table2.table_id = table2.id
WHERE column1 = '123' AND (column2 = '123' OR column3 = '123')
ORDER BY column1 DESC, column2 ASC
LIMIT 1 OFFSET 0;