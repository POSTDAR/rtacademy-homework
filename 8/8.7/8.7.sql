INSERT INTO category (id, title, alias)
VALUES ('1', 'head', 'boss');
INSERT INTO category (id, title, alias)
VALUES ('2', 'chief account', 'buh');
INSERT INTO category (id, title, alias)
VALUES ('3', 'engineer', 'eng');

INSERT INTO user (id,login, password,email,lastname,firstname)
VALUES ('1','login1','1234','login1@gmail.com','AAA','bbb');
INSERT INTO user (id,login, password,email,lastname,firstname)
VALUES ('2','login2','2345','login2@gmail.com','BBBB','cccc');
INSERT INTO user (id,login, password,email,lastname,firstname)
VALUES ('3','login3','3456','login3@gmail.com','CCCC','dddd');

INSERT INTO post (id,author_id, category_id, title, alias,content,publish_date,status)
VALUES ('1','1','1','Trip to the sea','Trip','fgnfgnfgnfnfhnn','2022-12-25','published');
INSERT INTO post (id,author_id, category_id, title, alias,content,publish_date,status)
VALUES ('2','1','2','Trip to the Africa','Trip1','zcgnvgn vn vgn v','2020-10-15','unpublished');
INSERT INTO post (id,author_id, category_id, title, alias,content,publish_date,status)
VALUES ('3','2','1','Trip to the Monaco','Trip2','птмптм тсмписмамачаипарир','2021-09-01','published');
INSERT INTO post (id,author_id, category_id, title, alias,content,publish_date,status)
VALUES ('4','3','1','Trip to the moon','Trip3','fgnfgnfgfnfhnn','2020-07-17','unpublished');
INSERT INTO post (id,author_id, category_id, title, alias,content,publish_date,status)
VALUES ('5','3','3','Trip to the Germany','Trip4','hhhhhhhhhhhhhhhh','2015-04-23','published');
INSERT INTO post (id,author_id, category_id, title, alias,content,publish_date,status)
VALUES ('6','2','3','Pasta','Food','hghgjnghjghjghjghjghjgj','2020-10-10','checked');
INSERT INTO post (id,author_id, category_id, title, alias,content,publish_date,status)
VALUES ('7','1','3','Tiramisu','Food1','sfsefsefsffsf','2021-12-09','unchecked');
INSERT INTO post (id,author_id, category_id, title, alias,content,publish_date,status)
VALUES ('8','2','2','Apple pie','Food2','hk,hkhukhkhkhk','2022-05-19','checked');
INSERT INTO post (id,author_id, category_id, title, alias,content,publish_date,status)
VALUES ('9','3','1','Carpaccio','Food3','afzfzfsfsfsf','2016-11-12','published');
INSERT INTO post (id,author_id, category_id, title, alias,content,publish_date,status)
VALUES ('10','2','1','Risotto','Food4','dgsdgsgsgdsg','2020-07-10','unpublished');

UPDATE
    post
SET
    status ='published'
WHERE
        alias ='Food2';

SELECT
    p.title,
    p.content,
    p.status
FROM
    post AS p
WHERE
        status = 'published';