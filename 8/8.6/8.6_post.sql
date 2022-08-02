CREATE TABLE post
(
    id           int PRIMARY KEY AUTO_INCREMENT,
    author_id    int,
    category_id  int,
    title        varchar(128) NOT NULL ,
    alias        varchar(128) NOT NULL UNIQUE ,
    content      longtext     NOT NULL ,
    publish_date datetime     NOT NULL ,
    status       varchar(32)  NOT NULL ,
    FOREIGN KEY (author_id) REFERENCES user(id),
    FOREIGN KEY (category_id) REFERENCES category(id)
)