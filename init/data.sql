INSERT INTO tb_member(name, email)
VALUES ('김태현', 'k1m743hyun@icloud.com');

INSERT INTO tb_product(name, price)
VALUES ('깻잎', 990);

INSERT INTO tb_promotion(name, discount_type, discount_value, start_datetime, end_datetime)
VALUES ('5% 할인 이벤트', 'RATE', 0.05, '2025-06-06 00:00:00', '2029-12-31 23:59:59');

INSERT INTO tb_promotion(name, discount_type, discount_value, start_datetime, end_datetime)
VALUES ('만원 할인 이벤트', 'PRICE', 10000, '2025-06-06 00:00:00', '2029-12-31 23:59:59');