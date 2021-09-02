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
reg_data_cadastro DATETIME NOT NULL,
PRIMARY KEY (id)
)ENGINE=innoDB;

# Inserindo dados na tabela Cartao
INSERT INTO Cartao VALUES
(DEFAULT, "1234567891234567", "789", "2025-06-10", TRUE, "2021-06-13 23:50:36"),
(DEFAULT, "6546846513513849", "576", "2023-08-30", TRUE, "2021-06-13 23:51:00"),
(DEFAULT, "1658465432761136", "443", "2022-04-18", TRUE, "2021-06-13 23:51:24");

#Selecionando os cartões válidos em ordem da data de cadastro
SELECT * FROM Cartao WHERE cartao_valido = TRUE ORDER BY reg_data_cadastro ASC;

#Criando a tabela transação
CREATE TABLE transacao (
id int not null auto_increment,
id_usuario int not null,
id_cartao int not null,
valor decimal(8, 2) not null,
reg_cadastro datetime not null,
foreign key (id_usuario) references usuario(id),
foreign key (id_cartao) references cartao(id)
)ENGINE=innoDB;

#Inserindo os valores na tabela transacao
INSERT INTO transacao VALUES
(DEFAULT, 1, 1, 465.78, "2021-08-10 18:01:00"),
(DEFAULT, 2, 2, 245.99, "2021-08-10 18:04:00"),
(DEFAULT, 3, 3, 345.50, "2021-0810 18:05:24");

#Inserindo JOIN em ordem decrescente da data de cadastro
SELECT t.id, u.nome, u.user_name, c.number, c.cvv, DATE_FORMAT(c.data_expericao, '%m/%y'), c.cartao_valido, t.valor, t.reg_cadastro
FROM transacao t JOIN Usuario u ON t.id_usuario = u.id JOIN Cartao c ON t.id_cartao = c.id;
