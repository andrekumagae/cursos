-- criando banco de dados por comando
CREATE DATABASE teste01 ON PRIMARY 
(NAME = teste01,
FILENAME = 'C:\sql\teste01.mdf',
SIZE = 6MB,
MAXSIZE = 15MB,
FILEGROWTH = 10%)
LOG ON (
NAME = teste01_log,
FILENAME = 'C:\sql\teste01.ldf',
SIZE = 1MB,
FILEGROWTH = 1MB)
GO

-- consultando bancos
SELECT name
FROM master.sys.databases
ORDER BY name;

-- outra forma de consulta mais detalhada
EXEC sp_databases;

--selecionar banco
USE teste01;

--informacoes sobre o banco
EXEC sp_helpdb teste01;

-- excluir banco de dados
DROP DATABASE IF EXISTS teste02;

-- excluir banco de dados em uso
USE MASTER
GO
ALTER DATABASE teste01
SET SINGLE_USER WITH ROLLBACK IMMEDIATE
DROP DATABASE teste01;
