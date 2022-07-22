CREATE TABLE category(
         id  int PRIMARY KEY    NOT NULL AUTO_INCREMENT,
         title varchar(64)      NOT NULL,
         alias varchar(64)      NOT NULL UNIQUE
)