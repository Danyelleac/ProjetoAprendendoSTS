/*Criando o banco de dados*/
CREATE DATABASE db_escola;

USE db_escola;
/*Criando a tabela*/
CREATE TABLE tb_alunos(
    /*definindo um id automatico para cada item cadastrado*/
	id bigint AUTO_INCREMENT,
    nome varchar(255) NOT NULL,
    turma varchar(50) NOT NULL,
	materia varchar(100) NOT NULL,
    media decimal (10,2) NOT NULL,
    /*definindo a chave primária*/
    PRIMARY KEY (id)
);

/*inserir valor*/
INSERT INTO tb_alunos (nome,turma,materia,media)
VALUES ("Maria Antonia","4ºB","Matematica", 9.7);

INSERT INTO tb_alunos (nome,turma,materia,media)
VALUES ("Maria Antonia","7ºB","Matematica", 3.3);

INSERT INTO tb_alunos (nome,turma,materia,media)
VALUES ("Maria Antonia","8ºD","Matematica", 4.7);

INSERT INTO tb_alunos (nome,turma,materia,media)
VALUES ("Maria Antonia","9ºA","Matematica", 5.0);

INSERT INTO tb_alunos (nome,turma,materia,media)
VALUES ("Maria Antonia","1ºB","Fisica", 6.2);

INSERT INTO tb_alunos (nome,turma,materia,media)
VALUES ("Maria Antonia","2ºB","Fisica", 7.3);

INSERT INTO tb_alunos (nome,turma,materia,media)
VALUES ("Maria Antonia","1ºB","Fisica", 9.3);

INSERT INTO tb_alunos (nome,turma,materia,media)
VALUES ("Maria Antonia","3ºB","Fisica", 8.7);

/*mostrar tabela*/
SELECT * FROM tb_alunos;

/*mostrar alunos media menor que 7*/

SELECT * FROM tb_alunos where media< 7;

/*mostrar alunos media maior que 7*/
SELECT * FROM tb_alunos where media> 7;

/*atualizar dado*/

UPDATE tb_alunos SET media = 7.3 WHERE id=2;
