create table tipocliente(
    i_tipocliente_tipocliente INT PRIMARY KEY AUTO_INCREMENT,
    s_dsctipocliente_tipocliente VARCHAR(100) NOT NULL
 );

/* comando para add foreign key
 * ALTER TABLE <tabela de origem> ADD CONSTRAINT <nome da restricao da fk> FOREIGN KEY (<nome da fk na tabela>) REFERENCES <tabela de destino> (<nome da pk na tabela de destino>) 
 * 
 */
ALTER TABLE cliente ADD CONSTRAINT fk_tipocliente FOREIGN KEY (i_tipo_cliente) REFERENCES tipocliente (i_tipocliente_tipocliente);

desc cliente;
desc tipocliente;
