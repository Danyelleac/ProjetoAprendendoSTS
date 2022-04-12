CREATE DATABASE db_farmacia_do_bem;
USE db_farmacia_do_bem;

CREATE TABLE tb_categoria(
	id bigint AUTO_INCREMENT,
	tipo varchar(255) NOT NULL,
    descricao varchar(255) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO tb_categoria (tipo,descricao)
VALUES ("Antialérgico", "para alergia");

INSERT INTO tb_categoria (tipo,descricao)
VALUES ("Analgesicos", "para dor de cabeça");

INSERT INTO tb_categoria (tipo,descricao)
VALUES ("Anti-inflamatório", "para inflamação");

INSERT INTO tb_categoria (tipo,descricao)
VALUES ("cloridrato de fenilefina", "para gripe");

INSERT INTO tb_categoria (tipo,descricao)
VALUES ("nitazoxanida", "para verme");

SELECT * FROM tb_categoria;

CREATE TABLE tb_produto(
	id bigint AUTO_INCREMENT,
    marca varchar(255) NOT NULL,
    quantidade varchar(255) NOT NULL,
    valor DECIMAL(10,2) NOT NULL,
    categoria_id bigint, 
    PRIMARY KEY (id),
	FOREIGN KEY (categoria_id) REFERENCES tb_categoria(id)
	   
);

INSERT INTO tb_produto (marca, quantidade, valor,categoria_id)
VALUES ("Polaramine","500ml", 70.99 , 1);
INSERT INTO tb_produto (marca, quantidade, valor,categoria_id)
VALUES ("Alegra","500ml", 50.41 , 1);

INSERT INTO tb_produto (marca, quantidade, valor,categoria_id)
VALUES ("Dorflex","200ml", 2.99 , 2);
INSERT INTO tb_produto (marca, quantidade, valor,categoria_id)
VALUES ("Naldex","100ml", 20.41 , 2);

INSERT INTO tb_produto (marca, quantidade, valor,categoria_id)
VALUES ("PInflam","150ml", 30.99 , 3);
INSERT INTO tb_produto (marca, quantidade, valor,categoria_id)
VALUES ("Laranax","300ml", 25.41 , 4);

INSERT INTO tb_produto (marca, quantidade, valor,categoria_id)
VALUES ("Vermic","300ml", 65.99 , 5);
INSERT INTO tb_produto (marca, quantidade, valor,categoria_id)
VALUES ("Annita","200ml", 54.51 , 5);

SELECT * FROM tb_produto;

SELECT * FROM tb_produto WHERE valor>50;
SELECT* FROM tb_produto WHERE valor BETWEEN 3 AND 60;
SELECT*FROM tb_produto WHERE marca LIKE "%b%";

SELECT * FROM tb_produto INNER JOIN tb_categoria
ON tb_produto.categoria_id = tb_categoria.id;

SELECT * FROM tb_produto INNER JOIN tb_categoria
ON tb_produto.categoria_id = tb_categoria.id
WHERE tb_categoria.tipo = "Antialérgico";

