1.Lấy số lượng bài viết

SELECT COUNT(posts.user_id) FROM posts;

2. Lấy những bài viết có point lớn hơn 2

SELECT * FROM posts WHERE  point > 2;

3. Lấy 3 bài viết có điểm cao nhất

SELECT * FROM posts ORDER BY posts.point DESC LIMIT 3;

4.Lấy tổng điểm của tất cả bài viết cho từng user

SELECT users.*, SUM(point) FROM users
LEFT JOIN posts ON users.id = posts.user_id
GROUP BY user_id;

5. Lấy trung bình cộng của tất bài viết cho từng user

SELECT users.*, AVG(point) FROM users
LEFT JOIN posts ON users.id = posts.user_id
GROUP BY user_id;

6. Lấy 3 user có trung bình cộng diem theo thứ tự giảm dần

SELECT users.*, AVG(point) as avg_point FROM users
LEFT JOIN posts ON users.id = posts.user_id
GROUP BY user_id ORDER BY avg_point DESC LIMIT 3;


7. Lấy 3 user có nhiều bài viết nhất

SELECT users.*, COUNT(posts.user_id) as total_posts FROM users
LEFT JOIN posts ON users.id = posts.user_id
GROUP BY user_id ORDER BY total_posts DESC LIMIT 3;

8. Lấy ra bài viết có điểm thấp nhất và thông tin của user

SELECT users.*, MIN(posts.point) FROM users
LEFT JOIN posts ON users.id = posts.user_id
GROUP BY user_id LIMIT 1;

9. Lấy ra bài viết và thông tin của user có điểm trung bình cộng thấp nhất

SELECT users.*, AVG(posts.point) as avg_point FROM users
LEFT JOIN posts ON users.id = posts.user_id
GROUP BY user_id ORDER BY avg_point ASC LIMIT 1;

10.  Lấy ra thông tin của user có ít bài viết nhất

SELECT users.*, COUNT(user_id) as count_posts FROM users
LEFT JOIN posts ON users.id = posts.user_id
GROUP BY user_id ORDER BY count_posts ASC LIMIT 1;

11. Lấy ra bài viết có điểm thuộc top 3 đến top 6
 id 13 14 16 1
SELECT posts.id, point FROM posts
ORDER BY point DESC LIMIT 4 OFFSET 2;

12. Lấy ra những user có 2 bài viết trở lên

SELECT users.*, COUNT(posts.user_id) FROM users
LEFT JOIN posts ON users.id = posts.user_id
GROUP BY user_id having COUNT(posts.user_id) > 2;

13. Lấy ra những bài viết có điểm trung bình cộng lớn hơn 2

SELECT posts.*, AVG(point) FROM posts
GROUP BY user_id having AVG(point) > 2;

14. Lấy ra những user có điểm trung bình cộng của bài viết hơn 2

SELECT users.*, AVG(posts.point) FROM users
LEFT JOIN posts ON users.id = posts.user_id
GROUP BY user_id having AVG(posts.point) > 2;
