# Criando o banco de dados
CREATE DATABASE Pagamento_cartao
DEFAULT CHARACTER SET utf8
DEFAULT COLLATE utf8_general_ci;

USE Pagamento_cartao;

#Criando a tabela Usuario
CREATE TABLE Usuario (
id int NOT NULL AUTO_INCREMENT,
nome varchar(255) NOT NULL,
imagem_url varchar(255) NOT NULL,
user_name varchar(255) NOT NULL,
reg_data DATETIME NOT NULL,
PRIMARY KEY (id)
) ENGINE=InnoDB;

#Inserindo os valores na tabela Usuarios
INSERT INTO Usuario VALUES
(DEFAULT, "Jefferson", "https://google-imgs.com", "@jefferson", "2021-06-13 23:02:36"),
(DEFAULT, "João", "https://google-imgs.com", "@joão", "2021-06-13 23:03:00"),
(DEFAULT, "Paulo", "https://google-imgs.com", "@paulo", "2021-06-13 23:03:24"),
(DEFAULT, "Ana", "https://google-imgs.com", "@ana", "2021-06-13 23:07:24");

#Selecionando os usuários em ordem alfabética
SELECT * FROM Usuario ORDER BY nome ASC;

#Criando a tabela Cartao
CREATE TABLE Cartao (
id int NOT NULL AUTO_INCREMENT,
number char(16) NOT NULL,
cvv char(3) NOT NULL,
data_expericao DATE NOT NULL,
cartao_valido BOOLEAN NOT NULL,
reg_data_cadastro DATETIME NOT NULL
)ENGINE=innoDB;