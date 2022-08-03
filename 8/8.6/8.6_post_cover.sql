CREATE TABLE post_cover
(
    id              int PRIMARY KEY AUTO_INCREMENT,
    post_id         int,
    file_name       varchar(128) NOT NULL UNIQUE ,
    title           varchar(64)  NOT NULL ,
    FOREIGN KEY (post_id) REFERENCES post(id)
)