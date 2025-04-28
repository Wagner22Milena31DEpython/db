-- Seleciona o banco de dados
USE Biblioteca;

-- Criação da tabela Categoria
CREATE TABLE categoria (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL
);

-- Criação da tabela Autor
CREATE TABLE autor (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL
);

-- Criação da tabela Funcionário
CREATE TABLE funcionario (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL
);

-- Criação da tabela Aluno
CREATE TABLE aluno (
    matricula INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    turma VARCHAR(255) NOT NULL
);

-- Criação da tabela Livro
CREATE TABLE livro (
    id INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(255) NOT NULL,
    categoria_id INT NOT NULL,
    autor_id INT NULL,
    FOREIGN KEY (categoria_id) REFERENCES categoria(id) ON DELETE CASCADE,
    FOREIGN KEY (autor_id) REFERENCES autor(id) ON DELETE SET NULL
);

-- Criação da tabela Empréstimo
CREATE TABLE emprestimo (
    emprestimo_id INT PRIMARY KEY AUTO_INCREMENT,
    livro_id INT NOT NULL,
    aluno_matricula INT NOT NULL,
    data_emprestimo DATE NOT NULL,
    funcionario_id INT NOT NULL,
    FOREIGN KEY (livro_id) REFERENCES livro(id) ON DELETE CASCADE,
    FOREIGN KEY (aluno_matricula) REFERENCES aluno(matricula) ON DELETE CASCADE,
    FOREIGN KEY (funcionario_id) REFERENCES funcionario(id) ON DELETE CASCADE
);
