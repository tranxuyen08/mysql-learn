SELECT * FROM posts RIGHT JOIN users ON posts.user_id = users.id;

SELECT posts.*, users.email FROM posts RIGHT JOIN users ON posts.user_id = users.id
ORDER BY users.email DESC;