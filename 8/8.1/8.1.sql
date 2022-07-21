CREATE TABLE users (
    id int unsigned,
    lastname varchar (64),
    firstname varchar (32),
    birthdate date,
    email varchar(255),
    phone varchar(13),
    gender enum('male', 'female'),
    timezone varchar(37),
    registration_time timestamp,
    registration_ip varchar(15)
)