# \\10.91.176.248\Compartilhamento de Aluno/
#1.Criar Tabela
CREATE DATABASE escola;

#Excluisão do Banco De Dados
#DROP DATABASE escola;


#2. Selecionar o Banco De Dados
USE escola;

#3.Criar tabelas
CREATE TABLE ALUNO (
	idAluno INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    cpf CHAR (11),
    dataNascimento DATE,
    statusCadastro BIT
);



CREATE TABLE CURSO (
	idCurso INT AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR(100),
    descricao TEXT
);



CREATE TABLE MATRICULA (
	idMatricula INT AUTO_INCREMENT PRIMARY KEY,
    idAluno INT,
    idCurso INT,
    CONSTRAINT fk_aluno_matricula FOREIGN KEY (idAluno) REFERENCES ALUNO(idAluno),
	CONSTRAINT fk_curso_matricula FOREIGN KEY (idCurso) REFERENCES CURSO(idCurso)
);


#DROP TABLE ALUNO;
#DROP TABLE CURSO;
#DROP TABLE MATRICULA;

#4 . Códigos Básicos

#Recuperar
SELECT * FROM ALUNO;

#Inserir
INSERT ALUNO (nome,cpf,dataNascimento,statusCadastro)  
VALUES('Pai da Bola','8685448791', '1996-05-11', 1);

#Excluir 
#DELETE FROM ALUNO WHERE idAluno = 3;

#Inserir
INSERT ALUNO (nome, cpf, dataNascimento, statusCadastro)
VALUES ('Pai do Banco', '12345678910', '1996-06-21', 1);

#4. Modificar as Tabelas
ALTER TABLE ALUNO 
ADD COLUMN 
email VARCHAR(100);

#5. Renomear uma Tabela
RENAME TABLE CURSO TO DISCIPLINA;

#Modicar ou Renomear Colunas 
ALTER TABLE ALUNO CHANGE email emailUsuario VARCHAR(80);

#6. Deletar Dados das Tabelas
SET FOREIGN_KEY_CHECKS = 0; 
TRUNCATE TABLE ALUNO;
SET FOREIGN_KEY_CHECKS = 1;

SELECT * FROM ALUNO;


#7. Deletar uma Tabela
DROP TABLE DICIPLNA;
