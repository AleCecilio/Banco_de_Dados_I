
#1.Criar Banco de Dados
CREATE DATABASE escola;

#Excluisão do Banco De Dados
#DROP DATABASE escola;


#2. Selecionar o Banco De Dados
USE escola;

#3.Criar tabelas
CREATE TABLE alunos (
	idAlunos INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    cpf CHAR (11),
    dataNascimento DATE,
    status BIT
);


