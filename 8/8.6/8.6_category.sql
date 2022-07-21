CREATE TABLE category(
         id  int PRIMARY KEY    NOT NULL,
         title varchar(64)      NOT NULL,
         alias varchar(64)      NOT NULL UNIQUE
)