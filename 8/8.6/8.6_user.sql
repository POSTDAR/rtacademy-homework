CREATE TABLE user(
         id         int PRIMARY KEY ,
         login      varchar(64) UNIQUE ,
         password   varchar(128),
         email      varchar(225) UNIQUE ,
         lastname   varchar(64),
         firstname  varchar(64)
)