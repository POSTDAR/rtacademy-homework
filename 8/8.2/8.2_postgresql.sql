create type gender_request as enum('male', 'female');
CREATE TABLE users (
                       id serial,
                       lastname varchar (64),
                       firstname varchar (32),
                       birthdate bytea,
                       email varchar(255),
                       phone varchar(13),
                       gender gender_request,
                       timezone varchar(37),
                       registration_time timestamp,
                       registration_ip cidr (15)

)