CREATE DATABASE db_cidade_das_carnes;
USE db_cidade_das_carnes;

CREATE TABLE tb_categoria(
	id bigint AUTO_INCREMENT,
	tipo varchar(255) NOT NULL,
    categoria varchar(255) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO tb_categoria (tipo,categoria)
VALUES ("vermelha", "1º linha");

INSERT INTO tb_categoria (tipo,categoria)
VALUES ("vermelha", "2º linha");

INSERT INTO tb_categoria (tipo,categoria)
VALUES ("vermelha", "3º linha");

INSERT INTO tb_categoria (tipo,categoria)
VALUES ("branca", "1º linha");

INSERT INTO tb_categoria (tipo,categoria)
VALUES ("branca", "2º linha");

SELECT * FROM tb_categoria;

CREATE TABLE tb_produto(
	id bigint AUTO_INCREMENT,
    nome varchar(255) NOT NULL,
    quantidade varchar(255) NOT NULL,
    valor int NOT NULL,
    categoria_id bigint, 
    PRIMARY KEY (id),
	FOREIGN KEY (categoria_id) REFERENCES tb_categoria(id)
	   
);

INSERT INTO tb_produto (nome, quantidade, valor,categoria_id)
VALUES ("patinho", "500g", 25.90 , 1);
INSERT INTO tb_produto (nome, quantidade, valor,categoria_id)
VALUES ("cochão duro", "500g", 15.90 , 2);

INSERT INTO tb_produto (nome, quantidade, valor,categoria_id)
VALUES ("picanha", "450g", 55.90 , 1);
INSERT INTO tb_produto (nome, quantidade, valor,categoria_id)
VALUES ("musculo", "550g", 7.90 , 3);

INSERT INTO tb_produto (nome, quantidade, valor,categoria_id)
VALUES ("cocha", "1Kg", 35.90 , 4);
INSERT INTO tb_produto (nome, quantidade, valor,categoria_id)
VALUES ("pescoço", "500g", 15.90 , 5);

INSERT INTO tb_produto (nome, quantidade, valor,categoria_id)
VALUES ("peito", "400g", 22.90 , 4);
INSERT INTO tb_produto (nome, quantidade, valor,categoria_id)
VALUES ("asa", "500g", 35.90 , 4);

SELECT * FROM tb_produto;

SELECT * FROM tb_produto WHERE valor>50;
SELECT* FROM tb_produto WHERE valor BETWEEN 3 AND 60;
SELECT*FROM tb_produto WHERE nome LIKE "%c%";

SELECT * FROM tb_produto INNER JOIN tb_categoria
ON tb_produto.categoria_id = tb_categoria.id;

SELECT * FROM tb_produto INNER JOIN tb_categoria
ON tb_produto.categoria_id = tb_categoria.id
WHERE tb_categoria.tipo = "branca";

