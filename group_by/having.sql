SELECT count(*), posts.user_id, users.email from users
inner join posts on users.id = posts.user_id
group by posts.user_id having count(*) >= 2;