ALTER TABLE cliente MODIFY COLUMN s_nome_cliente VARCHAR(30);
ALTER TABLE cliente MODIFY COLUMN s_nome_cliente VARCHAR(50);
ALTER TABLE cliente ADD COLUMN i_tipo_cliente INT DEFAULT 1;
ALTER TABLE cliente DROP COLUMN i_tipo_cliente;
ALTER TABLE cliente MODIFY COLUMN s_nome_cliente VARCHAR(30);
ALTER TABLE cliente MODIFY COLUMN s_nome_cliente VARCHAR(50);
ALTER TABLE cliente ADD COLUMN i_tipo_cliente INT DEFAULT 1;
ALTER TABLE cliente ADD COLUMN i_tipo_cliente
INT NOT NULL;
