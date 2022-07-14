create type gender_request as enum('male', 'female');
CREATE TABLE users (
                       id serial,
                       lastname char (64),
                       firstname char (32),
                       birthdate bytea,
                       email char(255),
                       phone char(13),
                       gender gender_request,
                       timezone char(37),
                       registration_time timestamp,
                       registration_ip char(15)

)