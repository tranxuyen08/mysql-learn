1.Lấy số lượng bài viết
SELECT count(*) as count FROM posts;

2. Lấy những bài viết có point lớn hơn 2
SELECT * FROM posts WHERE point > 2;

3. Lấy 3 bài viết có điểm cao nhất
SELECT * FROM posts ORDER BY point DESC LIMIT 3;

4.Lấy tổng điểm của tất cả bài viết cho từng user
SELECT users.*, SUM(point) as total_point FROM users
LEFT JOIN posts ON users.id = posts.user_id GROUP BY user_id;

5. Lấy trung bình cộng của tất bài viết cho từng user
SELECT users.*, AVG(posts.user_id)  FROM users
LEFT JOIN posts ON users.id = posts.user_id GROUP BY user_id;

6. Lấy 3 user có trung bình cộng diem theo thứ tự giảm dần
join user, avg, desc, group by user_id, limit 3

SELECT AVG(posts.point), users.* FROM users
LEFT JOIN posts ON users.id = posts.user_id GROUP BY user_id
ORDER BY AVG(posts.point) DESC LIMIT 3 ;

7. Lấy 3 user có nhiều bài viết nhất

SELECT COUNT(posts.user_id), users.* FROM users
LEFT JOIN posts ON users.id = posts.user_id GROUP BY user_id
ORDER BY COUNT(posts.user_id) DESC LIMIT 3;

8. Lấy ra bài viết có điểm thấp nhất và thông tin của user
SELECT users.* , MIN(posts.point) FROM users
LEFT JOIN posts ON users.id = posts.user_id ;

9. Lấy ra bài viết và thông tin của user có điểm trung bình cộng thấp nhất
SELECT users.*, AVG(posts.point) FROM users
LEFT JOIN posts ON users.id = posts.user_id
GROUP BY user_id
ORDER BY AVG(posts.point) ASC LIMIT 1;

10.  Lấy ra thông tin của user có ít bài viết nhất
join, count, asc , limmit 1, group by
SELECT users.*, COUNT(posts.user_id) FROM users
LEFT JOIN posts ON users.id = posts.user_id
GROUP BY user_id
ORDER BY COUNT(posts.user_id) ASC LIMIT 1;