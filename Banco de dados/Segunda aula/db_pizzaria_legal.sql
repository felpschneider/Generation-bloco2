CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias(

	id BIGINT AUTO_INCREMENT,
	pizza_doce BOOLEAN NULL,
	pizza_salgada BOOLEAN NULL,

	PRIMARY KEY(id)
);

CREATE TABLE tb_pizzas(

	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(25),
    descricao TEXT,
    preco DECIMAL(6,2),
    tipo_id BIGINT,
    
	PRIMARY KEY(id),
    FOREIGN KEY (tipo_id) REFERENCES tb_pizzas(id)
);
SELECT * FROM tb_classes;

INSERT INTO tb_categorias(pizza_doce) VALUES (TRUE);
INSERT INTO tb_categorias(pizza_salgada) VALUES (TRUE);

SELECT * FROM tb_personagens;

INSERT INTO tb_pizzas(nome, descricao, preco, tipo_id) 
VALUES ("Atum", "Molho, atum solido, cebola e orégano", 45.69, 2);

INSERT INTO tb_pizzas(nome, descricao, preco, tipo_id) 
VALUES ("Margherita", "Molho, Manjericão, Queijo", 65.63, 2);

SELECT * FROM tb_personagens WHERE poder_ataque > 2000;

SELECT * FROM tb_personagens WHERE poder_defesa > 1000 AND poder_defesa < 2000;

SELECT nome FROM tb_personagens WHERE nome LIKE '%c%';

SELECT * FROM tb_personagens INNER JOIN tb_classes
ON tb_classes.id = tb_personagens.classe_id;

SELECT tb_classes.classe = "Assassino" FROM tb_personagens INNER JOIN tb_classes
ON tb_classes.id = tb_personagens.classe_id;

SELECT tb_classes.classe = "Tanque" FROM tb_personagens INNER JOIN tb_classes
ON tb_classes.id = tb_personagens.classe_id;

SELECT tb_personagens.id, tb_personagens.nome, tb_personagens.classe_id = 4, tb_classes.classe FROM tb_personagens INNER JOIN tb_classes
ON tb_classes.id = tb_personagens.classe_id;