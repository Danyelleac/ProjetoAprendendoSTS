CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

CREATE TABLE tb_classe(
	id bigint AUTO_INCREMENT,
	Raca varchar(255) NOT NULL,
    personalidade varchar(255) NOT NULL,
    Reino varchar(255) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO tb_classe (raca,personalidade,reino)
VALUES ("Elfo", "Bravo","Elfico");

INSERT INTO tb_classe (raca,personalidade,reino)
VALUES ("ET", "Inteligente","Estelar");

INSERT INTO tb_classe (raca,personalidade,reino)
VALUES ("Bruxo", "Amigavel","Terrestre");

INSERT INTO tb_classe (raca,personalidade,reino)
VALUES ("Guerreiro", "Terrivel","Zorg");

INSERT INTO tb_classe (raca,personalidade,reino)
VALUES ("Mago", "Tranquilo","Magolia");

SELECT * FROM tb_classe;

CREATE TABLE tb_personagem(
	id bigint AUTO_INCREMENT,
    nome varchar(255) NOT NULL,
    idade int,
    poderAtaque int,
    poderDefesa int,
    classe_id bigint, 
    PRIMARY KEY (id),
	FOREIGN KEY (classe_id) REFERENCES tb_classe(id)
	   
);

INSERT INTO tb_personagem (nome, idade, poderAtaque,poderDefesa, classe_id)
VALUES ("Malariana", 1500, 3000, 1000,3);
INSERT INTO tb_personagem (nome, idade, poderAtaque,poderDefesa, classe_id)
VALUES ("Osdras", 250, 3000, 100,1);

INSERT INTO tb_personagem (nome, idade, poderAtaque,poderDefesa, classe_id)
VALUES ("Valter", 160, 200, 1000,2);
INSERT INTO tb_personagem (nome, idade, poderAtaque,poderDefesa, classe_id)
VALUES ("Judite", 150, 600, 700,5);

INSERT INTO tb_personagem (nome, idade, poderAtaque,poderDefesa, classe_id)
VALUES ("Marcia", 500, 2000, 8000,4);
INSERT INTO tb_personagem (nome, idade, poderAtaque,poderDefesa, classe_id)
VALUES ("Josenildo", 200, 6000, 6000,1);

INSERT INTO tb_personagem (nome, idade, poderAtaque,poderDefesa, classe_id)
VALUES ("Marivaldo", 10, 300, 100,2);
INSERT INTO tb_personagem (nome, idade, poderAtaque,poderDefesa, classe_id)
VALUES ("Rosangela", 50,3500, 2000,4);

SELECT * FROM tb_personagem;

SELECT nome, poderAtaque FROM tb_personagem WHERE poderAtaque>2000;
SELECT* FROM tb_personagem WHERE poderDefesa BETWEEN 1000 AND 2000;
SELECT*FROM tb_personagem WHERE nome LIKE "%C%";

SELECT nome, tb_classe.raca
FROM tb_personagem INNER JOIN tb_classe
ON tb_personagem.classe_id = tb_classe.id;

SELECT nome, tb_classe.raca
FROM tb_personagem INNER JOIN tb_classe
ON tb_personagem.classe_id = tb_classe.id
WHERE tb_classe.raca = "Elfo";

