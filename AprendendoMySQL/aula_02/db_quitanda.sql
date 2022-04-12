-- CRIAR BANDO DE DADOS
CREATE DATABASE db_quitanda;

-- Selecionar o Banco de dados
 USE db_quitanda;

-- CRIAR TABELA TB_PRODUTOS
CREATE TABLE tb_produtos(
	-- DECLARANDO MEU ID E ATRIBUINDO UM PREENCIMENTO AUTOMATICO
    id bigint AUTO_INCREMENT,
    nome varchar(255) NOT NULL,
    quantidade int,
    data_validade date,
    preco decimal NOT NULL,
    PRIMARY KEY (id)
);

-- inserir dados na tabela

INSERT INTO tb_produtos (nome, quantidade,data_validade,preco)
VALUES ("arroz",50,"2023-04-29", 50.00);

INSERT INTO tb_produtos (nome, quantidade,data_validade,preco)
VALUES ("chuchu",20,"2022-04-18", 3.00);

INSERT INTO tb_produtos (nome, quantidade,data_validade,preco)
VALUES ("tomate",80,"2022-05-19", 16.00);

INSERT INTO tb_produtos (nome, quantidade,data_validade,preco)
VALUES ("cenoura",30,"2022-05-29", 13.00);

INSERT INTO tb_produtos (nome, quantidade,data_validade,preco)
VALUES ("morango",1,"2022-03-20", 8.50);

INSERT INTO tb_produtos (nome, quantidade,data_validade,preco)
VALUES ("banana",1,"2022-03-20", 8.50);

SELECT * FROM tb_produtos;
SELECT nome,precoMerc FROM tb_produtos where precoMerc > 10.00 AND quantidade<80;

SELECT nome, CONCAT('R$',FORMAT(precoMerc,2,'pt_BR')) AS preço FROM tb_produtos;

UPDATE tb_produtos SET preco = 8.50 WHERE id=5;
DELETE FROM tb_produtos WHERE id = 2;


/*ALTERANDO ATRIBUTOS DA MINHA TABELA*/
ALTER TABLE tb_produtos MODIFY preco decimal(8,2);
ALTER TABLE tb_produtos ADD descricao varchar(255);
ALTER TABLE tb_produtos DROP descricao;
ALTER TABLE tb_produtos CHANGE preco precoMerc decimal(8,2);



