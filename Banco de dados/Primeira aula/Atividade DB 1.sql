-- Cria um banco de dados --
CREATE DATABASE db_atividade1;

-- Indica ao sgdb o db a se manipular --
USE db_atividade1;

-- Cria uma tabela de funcionários passando as colunas--
CREATE TABLE tb_funcionarios(

	id BIGINT auto_increment,
    nome VARCHAR(255),
    salario DECIMAL(9,2),
	setor VARCHAR(255),
	matricula INT,
    
    PRIMARY KEY (id)
);

-- Traz todos os dados da tabela de funcionários --
SELECT * FROM tb_funcionarios;

-- Insere os atributos em parênteses --
INSERT INTO tb_funcionarios(nome, salario, setor, matricula)
VALUES("Wanessa", 5640.89, "Tecnologia", 03);

-- Insere os atributos em parênteses --
INSERT INTO tb_funcionarios(nome, salario, setor, matricula)
VALUES("Felipe", 1500.65, "Estágio", 08);

-- Insere os atributos em parênteses --
INSERT INTO tb_funcionarios(nome, salario, setor, matricula)
VALUES("João", 2000, "Recursos Humanos", 01);

INSERT INTO tb_funcionarios(nome, salario, setor, matricula)
VALUES("Jonathan", 6520.56, "Tecnologia", 02);

INSERT INTO tb_funcionarios(nome, salario, setor, matricula)
VALUES("Anne", 15325.78, "Executivo", 32);

-- Busca TODOS os funcionários que ganham mais de 2000 --
SELECT * FROM tb_funcionarios WHERE salario > 2000;

-- Busca TODOS os funcionários que ganham menos de 2000 --
SELECT * FROM tb_funcionarios WHERE salario < 2000;

-- Atualiza a tabela na posição do id 2 com o nome Marcelo --
UPDATE tb_funcionarios SET nome = "Marcelo" WHERE id = 2;

-- Deleta da tabela o item com id 4 --
DELETE FROM tb_funcionarios WHERE id = 4;
