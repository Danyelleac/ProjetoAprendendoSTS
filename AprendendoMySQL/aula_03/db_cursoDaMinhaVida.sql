CREATE DATABASE db_cursoDaMinhaVida;
USE db_cursoDaMinhaVida;

CREATE TABLE tb_categoria(
	id bigint AUTO_INCREMENT,
	tipo varchar(255) NOT NULL,
    tempo varchar(255) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO tb_categoria (tipo,tempo)
VALUES ("longa duração", "160horas");

INSERT INTO tb_categoria (tipo,tempo)
VALUES ("longa duração", "140horas");

INSERT INTO tb_categoria (tipo,tempo)
VALUES ("longa duração", "100horas");

INSERT INTO tb_categoria (tipo,tempo)
VALUES ("curta duração", "40horas");

INSERT INTO tb_categoria (tipo,tempo)
VALUES ("curta duração", "20horas");

SELECT * FROM tb_categoria;

CREATE TABLE tb_curso(
	id bigint AUTO_INCREMENT,
    curso varchar(255) NOT NULL,
    professor varchar(255) NOT NULL,
    valor int NOT NULL,
    categoria_id bigint, 
    PRIMARY KEY (id),
	FOREIGN KEY (categoria_id) REFERENCES tb_categoria(id)
	   
);

INSERT INTO tb_curso (curso,professor, valor,categoria_id)
VALUES ("Java", "Josué", 1000 , 1);
INSERT INTO tb_curso (curso,professor, valor,categoria_id)
VALUES ("Go-Lang", "Marta", 1500 , 1);

INSERT INTO tb_curso (curso,professor, valor,categoria_id)
VALUES ("JavaScript", "Regina", 800 , 2);
INSERT INTO tb_curso (curso,professor, valor,categoria_id)
VALUES ("MySql", "Sabrina", 900 , 2);

INSERT INTO tb_curso (curso,professor, valor,categoria_id)
VALUES ("GIT", "João", 550 , 3);
INSERT INTO tb_curso (curso,professor, valor,categoria_id)
VALUES ("Angular", "Salete", 450 , 3);

INSERT INTO tb_curso (curso,professor, valor,categoria_id)
VALUES ("HTML", "Muriel", 48 , 4);
INSERT INTO tb_curso (curso,professor, valor,categoria_id)
VALUES ("CSS", "Matilda", 40 , 5);

SELECT * FROM tb_curso;

SELECT * FROM tb_curso WHERE valor>50;
SELECT* FROM tb_curso WHERE valor BETWEEN 3 AND 60;
SELECT*FROM tb_curso WHERE curso LIKE "%j%";

SELECT * FROM tb_curso INNER JOIN tb_categoria
ON tb_curso.categoria_id = tb_categoria.id;

SELECT * FROM tb_curso INNER JOIN tb_categoria
ON tb_curso.categoria_id = tb_categoria.id
WHERE tb_categoria.tipo = "longa duração";

