Create table users(
	  id INT AUTO_INCREMENT PRIMARY KEY,
	  email varchar(255) not null UNIQUE,
    password varchar(255) not null,
    phone_number varchar(20),
    dob varchar(20),
    created_at int,
    updated_at int
);