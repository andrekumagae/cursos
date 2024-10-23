-- Gerenciamento de tabelas
-- ALTER, DROP, RENAME

-- ALTER TABLE NomeTabela
-- ADD / ALTER / DROP Objeto;

-- Seelcionar banco
USE Biblioteca;

-- Exemplo de adição de coluna
ALTER TABLE Livro
ADD Edicao SMALLINT;

--Exemplo de edição de coluna
ALTER TABLE Livro
ALTER COLUMN Edicao TINYINT;

-- Adicionar chave primaria (só funciona se a tabela não tiver pk)
ALTER TABLE NomeTabela
ADD PRIMARY KEY (Coluna);

--Como remover uma chave primaria ou qualquer constraint
ALTER TABLE NomeTabela
DROP CONSTRAINT NomeConstraint;

-- verificar nomes das constraints:
sp_help Livro;

-- Excluir coluna
ALTER TABLE Livro
DROP COLUMN Edicao;

-- Excluir tabela
DROP TABLE NomeTabela;

-- renomear uma tabela
-- sintaxe: sp_rename 'nome atual', 'novo nome';
sp_rename 'Livro' 'tbl_livros';
