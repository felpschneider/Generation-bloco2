CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes(

	id BIGINT AUTO_INCREMENT,
	classe VARCHAR(30),
    tipo_dano VARCHAR(20),

	PRIMARY KEY(id)
);

CREATE TABLE tb_personagens(

	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(25),
    descricao TEXT,
    poder_ataque INT,
    poder_defesa INT,
    classe_id BIGINT,
    
	PRIMARY KEY(id),
    FOREIGN KEY (classe_id) REFERENCES tb_classes(id)
);
SELECT * FROM tb_classes;

INSERT INTO tb_classes(classe, tipo_dano) VALUES ("Assassino", "Físico");
INSERT INTO tb_classes(classe, tipo_dano) VALUES ("Tanque", "Mágico");
INSERT INTO tb_classes(classe, tipo_dano) VALUES ("Mago", "Mágico");
INSERT INTO tb_classes(classe, tipo_dano) VALUES ("Atirador", "Físico");
INSERT INTO tb_classes(classe, tipo_dano) VALUES ("Suporte", "Híbrido");

SELECT * FROM tb_personagens;

INSERT INTO tb_personagens(nome, descricao, poder_ataque, poder_defesa, classe_id) 
VALUES ("Yuumi", "A Gata Mágica", 900, 500, 5);

INSERT INTO tb_personagens(nome, descricao, poder_ataque, poder_defesa, classe_id) 
VALUES ("Katarina", "A Lâmina Sinistra", 2500, 1200, 1);

INSERT INTO tb_personagens(nome, descricao, poder_ataque, poder_defesa, classe_id) 
VALUES ("Yasuo", "O Imperdoável", 2900, 1600, 1);

INSERT INTO tb_personagens(nome, descricao, poder_ataque, poder_defesa, classe_id) 
VALUES ("Zac", "A Arma Secreta", 600, 3500, 2);

INSERT INTO tb_personagens(nome, descricao, poder_ataque, poder_defesa, classe_id) 
VALUES ("Zyra", "A Ascensão dos Espinhos", 2300, 950, 3);

INSERT INTO tb_personagens(nome, descricao, poder_ataque, poder_defesa, classe_id) 
VALUES ("Vayne", "A Caçadora Noturna", 3500, 1100, 4);

INSERT INTO tb_personagens(nome, descricao, poder_ataque, poder_defesa, classe_id) 
VALUES ("Poppy", "Guardiã do Martelo", 900, 2900, 2);

INSERT INTO tb_personagens(nome, descricao, poder_ataque, poder_defesa, classe_id) 
VALUES ("Caitlyn", "A Xerife de Piltover", 3000, 1150, 4);

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