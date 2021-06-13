CREATE DATABASE FINANCEIRO
DEFAULT CHARACTER SET utf8
DEFAULT COLLATE utf8_general_ci;

CREATE TABLE Controle_financeiro (
id int NOT NULL AUTO_INCREMENT,
transacao enum('compra', 'venda') DEFAULT NULL,
produto varchar (255) NOT NULL,
valor decimal (11,2) NOT NULL,
reg datetime DEFAULT NULL,
PRIMARY KEY (id)
) DEFAULT CHARSET = utf8;

INSERT INTO Controle_financeiro VALUES
(DEFAULT,'venda','bola','45.00','2021-06-13 20:39:30'),
(DEFAULT,'compra','camisa','35.00','2021-06-13 20:40:30'),
(DEFAULT,'compra','calça','60.00','2021-06-13 20:41:30');

select * from Controle_financeiro

