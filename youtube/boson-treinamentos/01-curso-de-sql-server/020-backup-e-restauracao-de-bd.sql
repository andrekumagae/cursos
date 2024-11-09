-- Aula Backup e restauração de BD

-- Backup
BACKUP DATABASE Biblioteca TO DISK = 'C:\SQL\db_Biblioteca.bak';
GO

-- Restaurar
--Mudar para o banco master
USE master;
GO
-- Fechar as conexões
ALTER DATABASE Biblioteca SET single_user WITH ROLLBACK immediate;
GO
-- excluir banco
DROP DATABASE Biblioteca;
GO
-- comando de restauração
RESTORE DATABASE db_Biblioteca FROM DISK = 'C:\SQL\db_Biblioteca.bak';
GO

-- Acessar o banco
USE db_Biblioteca
GO
SELECT * FROM Livro;

