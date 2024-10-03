-- Criando Tabelas

CREATE TABLE curso (
	NomeDoCurso VARCHAR(50) Not NULL,
    Periodo VARCHAR(20) NOT NULL,
    Unidade VARCHAR(50) NOT NULL
);

CREATE TABLE aluno (
	id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
	NomeDoAluno VARCHAR(50) Not NULL,
    Idade INT,
    Periodo VARCHAR(20) NOT NULL,
    Unidade VARCHAR(50) NOT NULL,
    Curso VARCHAR(50),
	Feedback VARCHAR(300) NOT NULL,
    FeedbackDoProfessor VARCHAR(300)
);

CREATE TABLE avaliacao (
	id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
	NomeDoAluno VARCHAR(50) Not NULL,
    Periodo VARCHAR(20) NOT NULL,
    Unidade VARCHAR(50) NOT NULL,
    Curso VARCHAR(50),
	Feedback VARCHAR(300) NOT NULL,
    MediaDaAvaliacao VARCHAR(20)
);

CREATE TABLE professor (
	id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
	NomeDoProfessor VARCHAR(50) Not NULL,
    Periodo VARCHAR(20) NOT NULL,
    Unidade VARCHAR(50) NOT NULL,
    Curso VARCHAR(50),
    NomeDoAluno VARCHAR(50),
	FeedbackDoAluno VARCHAR(300) NOT NULL
);

-- Inserindo Valores

INSERT INTO curso (
	NomeDoCurso,
    Periodo,
    Unidade 
) VALUES (
	'Desenvolvimento de Sistemas',
    'Manhã',
    'São Miguel'
);

INSERT INTO aluno (
	NomeDoAluno,
    Idade,
    Periodo,
    Unidade,
    Curso,
	Feedback,
    FeedbackDoProfessor
) VALUES (
	'Joãozinho',
    18,
    'Manhã',
    'São Miguel',
    'Desenvolvimento de Sistemas',
    'Bom',
    'Muito bom'
);

INSERT INTO avaliacao (
	NomeDoAluno,
    Periodo,
    Unidade,
    Curso,
	Feedback,
    MediaDaAvaliacao
) VALUES (
	'Joãozinho',
    'Manhã',
    'São Miguel',
    'Desenvolvimento de Sistemas',
    'Bom',
    'Bom'
);

INSERT INTO professor (
	NomeDoProfessor,
    Periodo,
    Unidade,
    Curso,
    NomeDoAluno,
	FeedbackDoAluno
) VALUES (
	'Maria Xavier',
    'Manhã',
    'São Miguel',
    'Desenvolvimento de Sistemas',
    'Joãozinho',
    'Muito bom'
);

-- Selecionando Tabelas

SELECT * FROM curso;
SELECT * FROM aluno;
SELECT * FROM avaliacao;
SELECT * FROM professor;