CREATE TABLE post_comment
(
    id              int PRIMARY KEY,
    user_id         int,
    pos_id          int,
    created_date    datetime    NOT NULL ,
    comment       varchar(225)  NOT NULL,
    FOREIGN KEY (user_id) REFERENCES user(id),
    FOREIGN KEY (pos_id) REFERENCES post(id)
)