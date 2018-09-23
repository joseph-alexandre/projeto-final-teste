DROP DATABASE IF EXISTS projeto_final;
CREATE DATABASE projeto_final;
USE projeto_final;


CREATE TABLE funcionarios(
	id INT AUTO_INCREMENT PRIMARY KEY,
	id_funcionario INTEGER,

	login VARCHAR (30),
	senha VARCHAR (6),	
	nome VARCHAR(100),
	cpf VARCHAR(20),
	email VARCHAR(50),
	telefone VARCHAR(20),
	rua VARCHAR(50),
	numero VARCHAR(5) ,
	bairro VARCHAR(50) ,
	cidade VARCHAR(50) ,
	estado VARCHAR(20) ,
	funcao VARCHAR(50) ,
	cep VARCHAR(20) ,

	tipo VARCHAR(100) DEFAULT 'Colaborador',
	FOREIGN KEY (id_funcionario) REFERENCES funcionarios(id)
);

CREATE TABLE fornecedores(
	id INT AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR (100) ,
	cnpj VARCHAR (100) ,
	telefone VARCHAR (20) ,
	email VARCHAR (50)
);

INSERT INTO fornecedores (nome, cnpj, telefone, email) VALUES
('Padaria Pão de Açucar', '523652365236', '47-33252471', 'padaria@padaria.com');

CREATE TABLE categorias(
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100)
);

INSERT INTO categorias (nome) VALUES
('Elêtronicos'),
('Acessórios'),
('Eletrodomésticos'),
('Alimentos e Bebidas'),
('Vestuários');

CREATE TABLE produtos(
	id INT AUTO_INCREMENT PRIMARY KEY,
        id_categoria INTEGER NOT NULL,
        nome VARCHAR (100),
		quantidade INT UNSIGNED,
	preco DECIMAL (8,2),
        FOREIGN KEY (id_categoria) REFERENCES categorias(id)
);

INSERT INTO produtos (id_categoria, nome, preco) VALUES 
(1, 'Xbox', 1800),
(2, 'Pulseira', 4.50),
(1, 'PS4', 4000),
(1, 'TV', 5000),
(1, 'Geladeira', 1800),
(1, 'Pia', 800),
(1, 'Sorvete', 12),
(1, 'Apple Watch', 12000),
(1, 'Monitor', 800),
(1, 'Rádio', 1000),
(1, 'Necessidade Básica', 5000),
(1, 'Mouse', 300),
(1, 'Teclado', 750);


;

CREATE TABLE produtos_saida(
        id INT AUTO_INCREMENT PRIMARY KEY,
        nome VARCHAR(100),
        quantidade INT UNSIGNED,
        total FLOAT
);

CREATE TABLE estoque(
        id INT AUTO_INCREMENT PRIMARY KEY,
	id_produto INTEGER NOT NULL,	
	tipo VARCHAR(7), -- Entrada ou Saída
	quantidade INT UNSIGNED,	
	FOREIGN KEY (id_produto) REFERENCES produtos(id));

CREATE TABLE fluxo_caixa(
        id INT AUTO_INCREMENT PRIMARY KEY,
        total_recebido DECIMAL(4,2),
        total_saida DECIMAL (4,2),
        saldo_inicial DECIMAL(4,2),
        saldo_final DECIMAL(4,2)
);
/*
CREATE TABLE recuperar_senha(
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_comerciante INTEGER NOT NULL,
    pergunta VARCHAR(200),
    FOREIGN KEY (id_comerciante) REFERENCES comerciantes(id)
);
*/

INSERT INTO funcionarios (nome,login, senha, telefone, funcao) VALUES
('Patrick', 'patrick', '123', '(83) 3542-2574', 'pedreiro'),
('Patrick Lejinho', 'patrick_lejinho', '123', '(43) 2847-4595', 'padeiro'),
('Lucas Tomando', 'lucas_tomando', '123', '(43) 98680-5360', 'eletricista'),
('João Paulo', 'joao_paulo', '123', '(84) 3507-3289', 'motorista'),
('Isadora das Costas Largas', 'isadora', '123', '(84) 98104-9974', 'advogada'),
('Jorge Tijolinho', 'jorge_tijolinho', '123', '(84) 98104-9974', 'refém');

INSERT INTO funcionarios (nome,login, senha, telefone, funcao) VALUES
('Patrick', 'patrick', '123', '(83) 3542-2574', 'Batata'),
('Patrick Lejinho', 'patrick_lejinho', '123', '(43) 2847-4595', 'Batata'),
('Lucas Tomando', 'lucas_tomando', '123', '(43) 98680-5360', 'Batata'),
('João Paulo', 'joao_paulo', '123', '(84) 3507-3289', 'Batata'),
('Isadora das Costas Largas', 'isadora', '123', '(84) 98104-9974', 'Batata'),
('Jorge Tijolinho', 'jorge_tijolinho', '123', '(84) 98104-9974', 'Batata');
