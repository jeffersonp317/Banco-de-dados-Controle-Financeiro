# Criando o banco de dados
CREATE DATABASE FINANCEIRO
DEFAULT CHARACTER SET utf8
DEFAULT COLLATE utf8_general_ci;

USE financeiro;

# Criando a tabela de transação
CREATE TABLE Controle_financeiro (
id int NOT NULL AUTO_INCREMENT,
transacao enum('compra', 'venda') DEFAULT NULL,
produto varchar (255) NOT NULL,
valor decimal (11,2) NOT NULL,
reg datetime NOT NULL,
PRIMARY KEY (id)
) DEFAULT CHARSET = utf8;

# Inserindo os dados na tabela
INSERT INTO Controle_financeiro VALUES
(DEFAULT,'venda','bola',-45.00,'2021-06-13 20:39:30'),
(DEFAULT,'compra','camisa',35.00,'2021-06-13 20:40:30'),
(DEFAULT,'compra','calça',60.00,'2021-06-13 20:41:30');

# ordenando a tabela pela data ascendete
SELECT * FROM Controle_financeiro ORDER BY reg ASC;

# Soma de todos os valores das transações
SELECT SUM(valor) FROM Controle_financeiro;

# Limpando todos os dados da tabela Controle_financeiro
TRUNCATE transaction;

select * from Controle_financeiro

