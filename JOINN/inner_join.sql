SELECT posts.*, users.email FROM posts
JOIN users ON posts.user_id = users.id ORDER BY users.email DESC;