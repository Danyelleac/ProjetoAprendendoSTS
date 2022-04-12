/*Criando o banco de dados*/
CREATE DATABASE db_rh;

USE db_rh;
/*Criando a tabela*/
CREATE TABLE tb_funcionaries(
    /*definindo um id automatico para cada item cadastrado*/
	id bigint AUTO_INCREMENT,
    nome varchar(255) NOT NULL,
    setor varchar(255) ,
	cargo varchar(255) NOT NULL,
    salario decimal (10,2) NOT NULL,
    /*definindo a chave primária*/
    PRIMARY KEY (id)
);

/*inserir valor*/
INSERT INTO tb_funcionaries (nome, setor,cargo,salario)
VALUES ("Maria Julia","Contabilidade","Analista Contabil", 4000.00);

INSERT INTO tb_funcionaries (nome, setor,cargo,salario)
VALUES ("Juliana","Contabilidade","Coordenadora Contabil", 6000.00);

INSERT INTO tb_funcionaries (nome, setor,cargo,salario)
VALUES ("Marta","TI","Desenvolvedora Java Pl.", 10000.00);

INSERT INTO tb_funcionaries (nome, setor,cargo,salario)
VALUES ("Ana","TI","Assitente Administrativa", 1000.00);

INSERT INTO tb_funcionaries (nome, setor,cargo,salario)
VALUES ("Vitoria","Marketing","Analista Propaganda", 5000.00);

/*mostrar tabela*/
SELECT * FROM tb_funcionaries;

/*mostrar funcionarios com salario menor que R$2000*/

SELECT nome,CONCAT('R$',FORMAT(salario,2,'pt_BR')) AS sal FROM tb_funcionaries where salario< 2000.00;

/*mostrar funcionarios com salario maior que R$2000*/
SELECT nome,CONCAT('R$',FORMAT(salario,2,'pt_BR')) AS sal FROM tb_funcionaries where salario > 2000.00;

/*atualizar dado*/

UPDATE tb_funcionaries SET salario = 12000.00,cargo = "Gerente Contabil" WHERE id=2;
