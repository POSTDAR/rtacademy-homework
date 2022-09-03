create table users
(
    id                int unsigned                          not null,
    lastname          varchar(64)                           not null,
    firstname         varchar(32)                           not null,
    birthdate         date                                  not null,
    email             varchar(255)                          not null,
    phone             varchar(13)                           not null,
    gender            enum ('male', 'female')               not null,
    timezone          varchar(37)                           not null,
    registration_time timestamp current_timestamp()         not null,
    registration_ip   varchar(15)                           not null,
    UNIQUE (id),
    UNIQUE (email),
    PRIMARY KEY (id),
    CHECK ( phone = '+^[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]?'),
    CHECK ( LOWER(email) )
);