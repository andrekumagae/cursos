-- NOT NULL impede que a coluna aceite valores vazios;
-- UNIQUE identifica valores únicos na tabela, afim de evitar valores duplicados.
-- CHECK define faixa de valores válidos que podem ser inseridos em uma coluna, como forma de validação condicional.
-- PRIMARY KEY define cada linha de forma única na tabela.
-- FOREIGN KEY cria relacionamento entre tabelas se conectando à PRIMARY KEY.
-- DEFAULT define valor padrão para a coluna quando nenhum outro valor for especificado.

CREATE TABLE Produtos (
CodProduto SMALLINT PRIMARY KEY,
NomeProduto VARCHAR(50) NOT NULL UNIQUE,
CodFornecedor SMALLINT DEFAULT 1520,
Validade DATE NOT NULL,
PrecoProduto MONEY NOT NULL CHECK(PrecoProduto > O),
CONSTRAINT fk_id_fornecedor FOREIGN KEY (CodFornecedor)
REFERENCES fornecedores (CodFornecedor) ON DELETE CASCADE
);
