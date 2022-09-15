SELECT * FROM posts LEFT JOIN users ON posts.user_id = users.id;

SELECT posts.*, users.email FROM posts LEFT JOIN users ON posts.user_id = users.id
ORDER BY title DESC;