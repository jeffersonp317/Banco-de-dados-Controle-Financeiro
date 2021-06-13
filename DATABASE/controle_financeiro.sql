CREATE DATABASE FINANCEIRO
DEFAULT CHARACTER SET utf8
DEFAULT COLLATE utf8_general_ci;

CREATE TABLE Controle_financeiro (
id int NOT NULL AUTO_INCREMENT,
transacao enum('compra', 'venda') DEFAULT NULL,
produto varchar (255) NOT NULL,
valor varchar (11) NOT NULL,
reg datetime DEFAULT NULL,
PRIMARY KEY (id)
) DEFAULT CHARSET = utf8;

