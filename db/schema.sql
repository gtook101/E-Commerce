-- DROP DATABASE
DROP DATABASE IF EXISTS ecommerce_db;

-- CREATE DATABASE
CREATE DATABASE ecommerce_db;

CREATE TABLE category(
    id INTEGER(2) AUTO_INCREMENT NOT NULL,
    category_name VARCHAR(20) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE product(
    id INTEGER(2) AUTO_INCREMENT NOT NULL,
    product_name VARCHAR(40) NOT NULL,
    price DECIMAL(5,2) NOT NULL,
    stock NUMERIC(3) NOT NULL,
    category_id INTEGER(2) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE tag(
    id INTEGER(2) AUTO_INCREMENT NOT NULL,
    tag_name VARCHAR(20),
    PRIMARY KEY (id)
);

CREATE TABLE productTag(
    id INTEGER(2) AUTO_INCREMENT NOT NULL,
    product_id INTEGER(2),
    tag_id INTEGER(2),
    PRIMARY KEY (id)
);

INSERT INTO category (category_name) VALUES ('Shirts');
INSERT INTO category (category_name) VALUES ('Shorts');
INSERT INTO category (category_name) VALUES ('Music');
INSERT INTO category (category_name) VALUES ('Hats');
INSERT INTO category (category_name) VALUES ('Shoes');

INSERT INTO product (product_name, price, stock, category_id) VALUES ('Plain T-Shirt', 14.99, 14, 1);
INSERT INTO product (product_name, price, stock, category_id) VALUES ('Running Sneakers', 90.00, 25, 5);
INSERT INTO product (product_name, price, stock, category_id) VALUES ('Branded Baseball Hat', 22.99, 12, 4);
INSERT INTO product (product_name, price, stock, category_id) VALUES ('Top 40 Music Compilation Vinyl Record', 12.99, 50, 3);
INSERT INTO product (product_name, price, stock, category_id) VALUES ('Cargo Shorts', 29.99, 22, 2);

INSERT INTO tag (tag_name) VALUES ('rock music');
INSERT INTO tag (tag_name) VALUES ('pop music');
INSERT INTO tag (tag_name) VALUES ('blue');
INSERT INTO tag (tag_name) VALUES ('red');
INSERT INTO tag (tag_name) VALUES ('green');
INSERT INTO tag (tag_name) VALUES ('white');
INSERT INTO tag (tag_name) VALUES ('gold');
INSERT INTO tag (tag_name) VALUES ('pop culture');

INSERT INTO productTag (product_id, tag_id) VALUES (1, 6);
INSERT INTO productTag (product_id, tag_id) VALUES (1, 7);
INSERT INTO productTag (product_id, tag_id) VALUES (1, 8);
INSERT INTO productTag (product_id, tag_id) VALUES (2, 6);
INSERT INTO productTag (product_id, tag_id) VALUES (3, 1);
INSERT INTO productTag (product_id, tag_id) VALUES (3, 3);
INSERT INTO productTag (product_id, tag_id) VALUES (3, 4);
INSERT INTO productTag (product_id, tag_id) VALUES (3, 5);
INSERT INTO productTag (product_id, tag_id) VALUES (4, 1);
INSERT INTO productTag (product_id, tag_id) VALUES (4, 2);
INSERT INTO productTag (product_id, tag_id) VALUES (4, 8);
INSERT INTO productTab (product_id, tag_id) VALUES (5, 3);