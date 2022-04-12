CREATE DATABASE db_construindo_a_nossa_vida;
USE db_construindo_a_nossa_vida;

CREATE TABLE tb_categoria(
	id bigint AUTO_INCREMENT,
	tipo varchar(255) NOT NULL,
    categoria varchar(255) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO tb_categoria (tipo,categoria)
VALUES ("pisos", "Alvenaria");

INSERT INTO tb_categoria (tipo,categoria)
VALUES ("revestimento", "Alvenaria");

INSERT INTO tb_categoria (tipo,categoria)
VALUES ("Material Construção", "Construção");

INSERT INTO tb_categoria (tipo,categoria)
VALUES ("Tubos conexao", "Hidraulico");

INSERT INTO tb_categoria (tipo,categoria)
VALUES ("Torneiras", "Metais");

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
VALUES ("Eliane-Porcelanato", "10m²", 340.33 , 1);
INSERT INTO tb_produto (nome, quantidade, valor,categoria_id)
VALUES ("Formigres-Ceramico", "10m²", 490.33 , 1);

INSERT INTO tb_produto (nome, quantidade, valor,categoria_id)
VALUES ("Savana-revestimento", "10m²", 350.33 , 2);
INSERT INTO tb_produto (nome, quantidade, valor,categoria_id)
VALUES ("Formigres-revestimento", "100m²", 3500.99 , 2);

INSERT INTO tb_produto (nome, quantidade, valor,categoria_id)
VALUES ("Votorantim-cimento", "50kg", 27.89 , 3);
INSERT INTO tb_produto (nome, quantidade, valor,categoria_id)
VALUES ("Quartzolit-Argamassa", "20kg", 15.33 , 3);

INSERT INTO tb_produto (nome, quantidade, valor,categoria_id)
VALUES ("Aminox-Ralo Linear", "4,5X200cm", 359.33 , 4);
INSERT INTO tb_produto (nome, quantidade, valor,categoria_id)
VALUES ("lorenzeti-Torneira", "1", 199.33 , 5);

SELECT * FROM tb_produto;

SELECT * FROM tb_produto WHERE valor>50;
SELECT* FROM tb_produto WHERE valor BETWEEN 3 AND 60;
SELECT*FROM tb_produto WHERE nome LIKE "%b%";

SELECT * FROM tb_produto INNER JOIN tb_categoria
ON tb_produto.categoria_id = tb_categoria.id;

SELECT * FROM tb_produto INNER JOIN tb_categoria
ON tb_produto.categoria_id = tb_categoria.id
WHERE tb_categoria.tipo = "pisos";
