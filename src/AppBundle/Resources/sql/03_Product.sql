CREATE TABLE dp_product
(
	id				BIGINT UNSIGNED 	NOT NULL AUTO_INCREMENT PRIMARY KEY,	-- Product id
	id_client		BIGINT UNSIGNED		NOT NULL,								-- Client id
	name 			VARCHAR(255) 		NOT NULL UNIQUE,						-- Name of product
	description 	TEXT,														-- Desc
	wholesale_price DECIMAL(9,2),												-- wholesale - hurtowa
	shop_price		DECIMAL(9,2),												-- shop - sprzedaży
	proposed_price	DECIMAL(9,2),												-- our porposition
	last_request	DATETIME,													-- last request at price from client
	last_update		DATETIME,													-- last change proposed_price
	period_update	TIME,														-- our proposed time between update
	period_request	TIME,														-- difference between last and penultimate request
	id_tax			BIGINT UNSIGNED,											-- id of tax
	
	FOREIGN KEY (id_tax)
		REFERENCES dp_tax(id)
		ON DELETE RESTRICT
		ON UPDATE RESTRICT,

	FOREIGN KEY (id_client)
		REFERENCES dp_client(id)
		ON DELETE RESTRICT
		ON UPDATE RESTRICT
);

-- Server Calculate: period_update, proposed_price

-- INSERT INTO dp_product VALUES(NULL,"Miotła","Aktywne sprzątanie",15,23,1),
-- 							 (NULL,"Cegła","Do budowy budynków",69,89,1),
-- 							 (NULL,"Monitor","Nowy",166,200,1);