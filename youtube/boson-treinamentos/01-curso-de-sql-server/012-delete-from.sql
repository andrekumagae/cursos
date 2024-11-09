-- conferindo dados
SELECT * FROM Assunto;
-- comando para exclusão com cláusula where
DELETE FROM Assunto WHERE IdAssunto = 8;
SELECT * FROM Assunto;

-- demonstração que o auto incremento permanece funcionando
INSERT INTO Assunto (NomeAssunto) VALUES ('Policial');

DELETE FROM Assunto WHERE NomeAssunto = 'Policial';
