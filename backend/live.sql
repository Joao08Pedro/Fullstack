DROP DATABASE live;

CREATE DATABASE live;

USE live;   

CREATE TABLE tipo(
    id INT PRIMARY KEY AUTO_INCREMENT,
    descricao VARCHAR(25) NOT NULL
);

CREATE TABLE viewer(
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    nick VARCHAR(15) NOT NULL,
    moderador BOOLEAN DEFAULT 0,
    foto TEXT NOT NULL,
    tipo_id INT NOT NULL,
    FOREIGN KEY (tipo_id) REFERENCES tipo(id)
);

INSERT INTO tipo(descricao) VALUES ("Brabo");
INSERT INTO tipo(descricao) VALUES ("Calmo");

INSERT INTO viewer(nome, nick, foto, tipo_id) VALUES ("NOME", "NICK", "FOTO", 2);