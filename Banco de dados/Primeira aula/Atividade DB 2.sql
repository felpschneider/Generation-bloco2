CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtos(
	
    id BIGINT auto_increment,
    produto VARCHAR(255),
	codigo INT,
    fabricacao DATE,
    valor DECIMAL(6,2),
	PRIMARY KEY (id)
);

SELECT * FROM tb_produtos;

INSERT INTO tb_produtos (produto, codigo, fabricacao, valor)
VALUES ("Mouse", 120, "2020-05-28", 89.99);

INSERT INTO tb_produtos (produto, codigo, fabricacao, valor)
VALUES ("Teclado", 100, "2019-12-15", 199.99);

INSERT INTO tb_produtos (produto, codigo, fabricacao, valor)
VALUES ("Monitor", 50, "2018-06-05", 599.99);

INSERT INTO tb_produtos (produto, codigo, fabricacao, valor)
VALUES ("Mousepad", 30, "2021-04-18", 39.99);

INSERT INTO tb_produtos (produto, codigo, fabricacao, valor)
VALUES ("Webcam", 25, "2022-11-28", 147.98);

INSERT INTO tb_produtos (produto, codigo, fabricacao, valor)
VALUES ("Headset", 10, "2022-12-22", 399.90);

INSERT INTO tb_produtos (produto, codigo, fabricacao, valor)
VALUES ("Cadeira", 99, "2022-09-01", 1296.49);

INSERT INTO tb_produtos (produto, codigo, fabricacao, valor)
VALUES ("Computador", 65, "2017-08-16", 4953.95);

SELECT * FROM tb_produtos WHERE valor > 500;

SELECT * FROM tb_produtos WHERE valor < 500;

UPDATE tb_produtos SET valor = 4669.96 WHERE id = 8;
