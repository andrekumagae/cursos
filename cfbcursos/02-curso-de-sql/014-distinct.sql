RENAME TABLE cliente TO clientes;

-- cfbcursos.vendas definition

CREATE TABLE `vendas` (
  `i_venda_venda` int NOT NULL AUTO_INCREMENT,
  `i_cliente_cliente` int NOT NULL,
  `d_data_venda` date DEFAULT NULL,
  `f_valor_venda` float DEFAULT NULL,
  PRIMARY KEY (`i_venda_venda`),
  KEY `fk_i_cliente_cliente` (`i_cliente_cliente`),
  CONSTRAINT `fk_i_cliente_cliente` FOREIGN KEY (`i_cliente_cliente`) REFERENCES `clientes` (`i_cliente_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

SELECT DISTINCT i_cliente_cliente from vendas;
