-- QUESTÃO 01
CREATE TABLE pessoa (
    id INT,
    nome VARCHAR(100),
    sobrenome VARCHAR(100),
    idade INT,
    CONSTRAINT chk_idade CHECK (idade >= 0)
);

-- QUESTÃO 02
ALTER TABLE pessoa
ADD CONSTRAINT uq_pessoa UNIQUE (id, nome, sobrenome);

-- QUESTÃO 03
ALTER TABLE pessoa
ALTER COLUMN idade INT NOT NULL;

-- QUESTÃO 04
CREATE TABLE endereco (
    id INT PRIMARY KEY,
    rua VARCHAR(150)
);

ALTER TABLE pessoa
ADD endereco INT;

ALTER TABLE pessoa
ADD CONSTRAINT fk_pessoa_endereco
FOREIGN KEY (endereco) REFERENCES endereco(id);