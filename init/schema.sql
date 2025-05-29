
DROP TABLE IF EXISTS tb_member;

CREATE TABLE tb_member
(
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(20) NOT NULL,
    email VARCHAR(50) NOT NULL
);

DROP TABLE IF EXISTS tb_product;

CREATE TABLE tb_product
(
    id INT AUTO_INCREMENT PRIMARY KEY
);

DROP TABLE IF EXISTS tb_order;

CREATE TABLE tb_order
(
    id INT AUTO_INCREMENT PRIMARY KEY
);

DROP TABLE IF EXISTS tb_order_product;

CREATE TABLE tb_order_product
(
    id INT AUTO_INCREMENT PRIMARY KEY,
    product_id INT NOT NULL,
    order_id INT NOT NULL
);

DROP TABLE IF EXISTS tb_promotion;

CREATE TABLE tb_promotion
(
    id INT AUTO_INCREMENT PRIMARY KEY
);

DROP TABLE IF EXISTS tb_product_promotion;

CREATE TABLE tb_product_promotion
(
    id INT AUTO_INCREMENT PRIMARY KEY,
    promotion_id INT NOT NULL,
    product_id INT NOT NULL
);

DROP TABLE IF EXISTS tb_order_promotion;

CREATE TABLE tb_order_promotion
(
    id INT AUTO_INCREMENT PRIMARY KEY,
    promotion_id INT NOT NULL,
    order_id INT NOT NULL
);

DROP TABLE IF EXISTS tb_delivery;

CREATE TABLE tb_delivery
(
    id INT AUTO_INCREMENT PRIMARY KEY
);

DROP TABLE IF EXISTS tb_order_delivery;

CREATE TABLE tb_order_delivery
(
    id INT AUTO_INCREMENT PRIMARY KEY,
    delivery_id INT NOT NULL,
    order_id INT NOT NULL
);

DROP TABLE IF EXISTS tb_claim;

CREATE TABLE tb_claim
(
    id INT AUTO_INCREMENT PRIMARY KEY
);

-- FK Constraint
ALTER TABLE tb_order_product
ADD CONSTRAINT FK_order_product_product FOREIGN KEY (product_id) REFERENCES tb_product(id);

ALTER TABLE tb_order_product
    ADD CONSTRAINT FK_order_product_order FOREIGN KEY (order_id) REFERENCES tb_order(id);

ALTER TABLE tb_product_promotion
    ADD CONSTRAINT FK_product_promotion_promotion FOREIGN KEY (promotion_id) REFERENCES tb_promotion(id);

ALTER TABLE tb_product_promotion
    ADD CONSTRAINT FK_product_promotion_product FOREIGN KEY (product_id) REFERENCES tb_product(id);

ALTER TABLE tb_order_promotion
    ADD CONSTRAINT FK_order_promotion_promotion FOREIGN KEY (promotion_id) REFERENCES tb_promotion(id);

ALTER TABLE tb_order_promotion
    ADD CONSTRAINT FK_order_promotion_order FOREIGN KEY (order_id) REFERENCES tb_order(id);

ALTER TABLE tb_order_delivery
    ADD CONSTRAINT FK_order_delivery_delivery FOREIGN KEY (delivery_id) REFERENCES tb_delivery(id);

ALTER TABLE tb_order_delivery
    ADD CONSTRAINT FK_order_delivery_order FOREIGN KEY (order_id) REFERENCES tb_order(id);