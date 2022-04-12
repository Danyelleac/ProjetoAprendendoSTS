/*Criando o banco de dados*/
CREATE DATABASE db_ecommerce;

USE db_ecommerce;
/*Criando a tabela*/
CREATE TABLE tb_produtos(
    /*definindo um id automatico para cada item cadastrado*/
	id bigint AUTO_INCREMENT,
    nome varchar(255) NOT NULL,
    marca varchar(100) ,
	tamanho varchar(5) NOT NULL,
    preco decimal (8,2) NOT NULL,
    /*definindo a chave primária*/
    PRIMARY KEY (id)
);

/*inserir valor*/
INSERT INTO tb_produtos (nome, marca,tamanho,preco)
VALUES ("Camiseta","Adidas","PP", 300.00);

INSERT INTO tb_produtos (nome, marca,tamanho,preco)
VALUES ("Vestido","D&G","P", 19000.00);

INSERT INTO tb_produtos (nome, marca,tamanho,preco)
VALUES ("Blusa","YSL","M", 29300.00);

INSERT INTO tb_produtos (nome, marca,tamanho,preco)
VALUES ("Saia","Adidas","GG", 400.00);

INSERT INTO tb_produtos (nome, marca,tamanho,preco)
VALUES ("Camiseta","Nike","PP", 300.00);

INSERT INTO tb_produtos (nome, marca,tamanho,preco)
VALUES ("Body","Channel","G", 30000.00);

INSERT INTO tb_produtos (nome, marca,tamanho,preco)
VALUES ("Jaqueta","Prada","M", 30000.00);

INSERT INTO tb_produtos (nome, marca,tamanho,preco)
VALUES ("T-shirt","Balenciaga","P", 300.00);

/*mostrar tabela*/
SELECT * FROM tb_produtos;

/*mostrar itens com valores menor que R$500*/

 SELECT * FROM tb_produtos where preco< 500.00;

/*mostrar itens com valores maior que R$500*/
SELECT * FROM tb_produtos where preco> 500.00;

/*atualizar dado*/

UPDATE tb_produtos SET preco = 35000.00 WHERE id=6;
