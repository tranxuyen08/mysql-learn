Create table posts (
  id int AUTO_INCREMENT PRIMARY KEY,
  user_id int not null,
  title varchar(255),
  content varchar(255),
  created_at int,
  updated_at int
);