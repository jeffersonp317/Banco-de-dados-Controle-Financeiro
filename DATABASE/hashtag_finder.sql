#Excluindo o banco caso tenha
DROP DATABASE if exists hashtag_finder;

#Criando o banco de dados
CREATE DATABASE if not exists hashtag_finder default character set utf8 default collate utf8_general_ci;

#Selecionando o banco de dados
Use hashtag_finder;

#Execução de parâmetros para a tabela BUSCA

#Excluindo a tabela caso tenha
DROP TABLE if exists busca;

#Criando a tabela BUSCA
CREATE TABLE busca (
id int not null auto_increment primary key,
hashtag varchar(255) not null,
data_registro datetime not null
)engine=InnoDB;

#Inserindo na tabela BUSCA
INSERT INTO busca values
(DEFAULT, "carros", "2021-08-31 17:37:24"),
(DEFAULT, "programação", "2021-08-31 17:38:10"),
(DEFAULT, "mouse gamer", "2021-08-31 17:40:40");

#Selecionando em ordem alfabética
SELECT * FROM busca 
ORDER BY data_registro ASC;

#Execução de parâmetros para a tabela SQUAD

#Excluindo a tabela SQUAD caso tenha
DROP TABLE if exists squad;

#Criando a tabela SQUAD
CREATE TABLE squad (
id int not null auto_increment primary key,
nome varchar(255) not null,
descricao varchar(1000) not null,
github_perfil varchar(150) not null,
email varchar(150) not null,
linkedin_perfil varchar(150) not null,
imagem_url varchar(150) not null
)ENGINE=InnoDB;

#inserindo os dados na tabela SQUAD
INSERT INTO squad values
(DEFAULT, "jefferson", "Estudando de programação e entusiasta na área de tecnologia. Neste projeto realizei a construção da página SOBRE.",
"https://github.com/jeffersonp317", "jeffersonp317@gmail.com", "https://www.linkedin.com/in/jefferson-junior-1681a167/", "https://google.com/image");

#Selecionando os usuários em ordem alfabética
SELECT * FROM squad;

#Execução de parâmetros para a tabela USUARIO

#Excluindo a tabela USUARIO caso tenha
DROP TABLE if exists usuario;

#Criando a tabela USUARIO
CREATE TABLE usuario (
id int not null auto_increment primary key,
email varchar(150) not null,
senha varchar(100) not null
)ENGINE=InnoDB;

#Inserindo dados na tabela USUARIO
INSERT INTO usuario values
(DEFAULT, "contato@newtab.academy", "123456");

#Selecionando o usuário em ordem alfabética
SELECT * FROM usuario;