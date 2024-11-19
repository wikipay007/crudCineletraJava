CREATE DATABASE cineletra;
USE cineletra;

    -- private Long id;
	-- private String nome;
	-- private String descricao;
	-- private String categoria;
    
    CREATE TABLE filmes(
		id INT PRIMARY KEY AUTO_INCREMENT,
        nome VARCHAR(100),
        descricao VARCHAR(200),
        categoria VARCHAR(20),
        anoFilme VARCHAR(4)
    );
    
    CREATE TABLE funcionarios(
	id INT PRIMARY KEY AUTO_INCREMENT,
    nome varchar(50),
    idade VARCHAR(10),
    cargo VARCHAR(50)
);
    
    
    ALTER TABLE filmes -- Modifica a tablea, acrescenta
ADD anoFIlme VARCHAR(4); -- Adiciona o email com limite de 80 caracteres
SELECT * FROM filmes;
DROP TABLE filmes;