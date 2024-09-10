CREATE TABLE Funcionarios (
id INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(45) NOT NULL,
departamento VARCHAR(45) NOT NULL,
codigo_projeto INT(2) NOT NULL
);

INSERT INTO Funcionarios (nome, departamento, codigo_projeto) VALUES ('Ana Beatriz', 'Tecnologia', '20');
INSERT INTO Funcionarios (nome, departamento, codigo_projeto) VALUES ('Luiz', 'RH', '18');
INSERT INTO Funcionarios (nome, departamento, codigo_projeto) VALUES ('Amanda', 'Tecnologia', '20');
INSERT INTO Funcionarios (nome, departamento, codigo_projeto) VALUES ('Luana', 'Projetos', '19');

SELECT codigo_projeto, nome, departamento FROM Funcionarios ORDER BY codigo_projeto;  -- colocando o codigo_projeto em ordem crescente

SELECT departamento FROM Funcionarios WHERE departamento LIKE'T%'; -- Busca com um caractere inicial específico
SELECT departamento, nome FROM Funcionarios WHERE departamento = 'Tecnologia'; -- buscando nome das funcionarias do departamento de tec

SELECT departamento, nome FROM Funcionarios WHERE (departamento = 'Projetos' OR departamento = 'RH'); -- busca de funcionarios apenas do RH ou Projetos

SELECT departamento, COUNT(*) FROM Funcionarios GROUP BY departamento;  -- contabiliza quantos funcionários tem no departamento
