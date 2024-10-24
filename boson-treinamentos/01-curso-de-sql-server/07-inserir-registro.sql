-- Inserir registros

-- Tabela de Assuntos
use Biblioteca;
INSERT INTO Assunto (NomeAssunto)
VALUES
('Ficção Científica' ),
( 'Botânica' ),
('Eletrônica'), ( 'Matemática'),
( 'Aventura' ),
('Romance' ),
('Finanças'),
('Gastronomia'),
('Terror'),
('Administração'),
(' Informática'),
('Suspense');

-- Consulta
SELECT * FROM Assunto;

INSERT INTO Editora (NomeEditora)
VALUES
('Prentice Hall'), ('O Reilly');

-- Consulta
SELECT * FROM Editora;

INSERT INTO Editora (NomeEditora)
VALUES
('Aleph'),
('Microsoft Press'),
('Wiley'),
('HarperCollins'),
('Érica'),
('Novatec'),
('McGraw-Hill'),
('Apress'),
('Francisco Alves'),
('Sybex'),
('Globo'),
('Companhia das Letras'),
( 'Morro Branco' ),
('Penguin Books'),
('Martin Claret'),
('Record'),
('Springer'),
('Melhoramentos'),
('Oxford'),
('Taschen'),
('Ediouro'),
('Bookman');

-- Consulta
SELECT * FROM Editora;

-- Tabela de autores
INSERT INTO Autor (NomeAutor, SobrenomeAutor)
VALUES ('Umberto', 'Eco');

-- Consulta
SELECT * FROM Autor;

INSERT INTO Autor (NomeAutor, SobrenomeAutor)
VALUES
('Daniel', 'Barret'), ('Gerald', 'Carter'), ('Mark', 'Sobell'),
('William', 'Stanek'), ('Christine', 'Bresnahan'), ('William', 'Gibson'),
('James', 'Joyce'), ('John', 'Emsley'), ('José', 'Saramago'),
('Richard', 'Silverman'), ('Robert', 'Byrnes'), ('Jay', 'Ts'),
('Robert', 'Eckstein'), ('Paul', 'Horowitz'), ('Winfield', 'Hill'),
('Joel', 'Murach'), ('Paul', 'Scherz'), ('Simon', 'Monk'),
('George', 'Orwell'), ('Ítalo','Calvino'), ('Machado','de Assis'),
('Oliver', 'Sacks'), ('Ray', 'Bradbury'), ('Walter', 'Isaacson'),
('Benjamin','Graham'), ('Júlio','Verne'), ('Marcelo', 'Gleiser'),
('Harri','Lorenzi'), ('Humphrey', 'Carpenter'), ('Isaac', 'Asimov'),
('Aldous', 'Huxley'), ('Arthur','Conan Doyle'), ('Blaise', 'Pascal'),
('Jostein', 'Gaarder'), ('Stephen', 'Hawking'), ('Stephen', 'Jay Gould'),
('Neil', 'De Grasse Tyson'), ('Charles', 'Darwin'), ('Alan', 'Turing'), ('Arthur', 'C. Clarke');

-- Verificação
SELECT * FROM Autor;


-- Tabela de Livros
INSERT INTO Livro (NomeLivro, ISBN13, DataPub, PreçoLivro,
NumeroPaginas, IdAssunto, IdEditora)
VALUES ('A Arte da Eletrônica', '9788582604342',
'20170308', 300.74,  1160, 3, 24);

SELECT * FROM Livro;

INSERT INTO Livro (NomeLivro, ISBN13, DataPub, PreçoLivro, NumeroPaginas, IdAssunto, IdEditora)
VALUES
	('Vinte Mil Léguas Submarinas', '9788582850022', '2014-09-16', 24.50, 448, 1, 16), -- Júlio Verne
	('O Investidor Inteligente', '9788595080805', '2016-01-25', 79.90, 450, 7, 6); -- Benjamin Graham	

-- Verificação
SELECT * FROM Livro;

-- Inserir em lote (bulk) a partir de arquivo CSV
INSERT INTO Livro (NomeLivro, ISBN13, DataPub, PreçoLivro,
NumeroPaginas, IdEditora, IdAssunto)
SELECT 
    NomeLivro, ISBN13, DataPub, PreçoLivro, NumeroPaginas,
	IdEditora, IdAssunto
FROM OPENROWSET(
    BULK 'C:\SQL\Livros.CSV',
    FORMATFILE = 'C:\SQL\Formato.xml',
	CODEPAGE = '65001',  -- UTF-8
	FIRSTROW = 2
) AS LivrosCSV;

-- Verificação
SELECT * FROM Livro;
SELECT * FROM LivroAutor;


exec sp_columns Livro;
exec sp_columns LivroAutor;

select * from LivroAutor;
select * from Livro;

-- Tabela LivroAutor
INSERT INTO LivroAutor(IdLivro, IdAutor) VALUES
(100,15),
(100,16),
(101,27),
(102,26), (103,41),
(104,24),
(105,32),
(106,20),
(107,27),
(108,1),
(109,22),
(110,10),
(111,21),
(112,5),
(113,10),
(114,8),
(115,18),
(115,19),
(116,31),
(117,22);

-- Verificação
SELECT * FROM LivroAutor;

-- Verificação com INNER JOIN
SELECT NomeLivro, NomeAutor, SobrenomeAutor
FROM Livro
INNER JOIN LivroAutor
  ON Livro.IdLivro = LivroAutor.IdLivro
INNER JOIN Autor
  ON Autor.IdAutor = LivroAutor.IdAutor
ORDER BY NomeLivro;

-- habilitar identity
SET IDENTITY_INSERT Livro OFF;

-- resetar auto increment
DBCC CHECKIDENT ('[Livro]', RESEED, 102);
GO

-- desabilitar identity
SET IDENTITY_INSERT Livro ON;



