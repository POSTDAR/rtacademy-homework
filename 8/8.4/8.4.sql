CREATE TABLE manager(
                        id            int NOT NULL PRIMARY KEY ,
                        first_name    varchar(64) NOT NULL ,
                        last_name     varchar(64) NOT NULL
);

CREATE TABLE client (
                        id            int NOT NULL PRIMARY KEY ,
                        first_name    varchar(64) NOT NULL ,
                        last_name     varchar(64) NOT NULL,
                        phone           varchar(13)NOT NULL
);

CREATE TABLE address(
                        id            int NOT NULL PRIMARY KEY ,
                        address varchar(225) NOT NULL
);

CREATE TABLE client_addresses(
                                 id int NOT NULL PRIMARY KEY ,
                                 client_id int,
                                 client_address varchar,
                                 FOREIGN KEY (client_id) REFERENCES client(id),
                                 FOREIGN KEY (client_address) REFERENCES address(id)
);
CREATE TABLE product(
                        id  int NOT NULL PRIMARY KEY ,
                        product_name varchar NOT NULL UNIQUE ,
                        price int UNSIGNED
);
CREATE TABLE discount(
                         id int NOT NULL PRIMARY KEY ,
                         value int unsigned
);
CREATE TABLE order(
                      id int NOT NULL PRIMARY KEY ,
                      order_number int AUTO_INCREMENT,
                      date_time timestamp,
                      manager_id varchar,
                      client_id int,
                      client_addresses_id int,
                      discount_id int,
                      total_price_ int unsigned,
                      status enum('registered','in progress', 'done', 'delivered'),
                      FOREIGN KEY (manager_id) REFERENCES manager(id),
                      FOREIGN KEY (client_id) REFERENCES client(id),
                      FOREIGN KEY (client_addresses_id) REFERENCES client_addresses(id),
                      FOREIGN KEY (discount_id) REFERENCES discount(id),
);
CREATE TABLE product_in_order(
                                 id int NOT NULL PRIMARY KEY ,
                                 product_id int,
                                 order_id int,
                                 count int unsigned,
                                 FOREIGN KEY (product_id) REFERENCES product(id),
                                 FOREIGN KEY (order_id) REFERENCES order(id)
)