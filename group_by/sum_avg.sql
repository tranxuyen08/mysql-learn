SELECT SUM(point), user_id FROM posts
GROUP BY user_id;

SELECT COUNT(*), SUM(point), AVG(point), user_id FROM posts
GROUP BY user_id;