-- Zbiór umów z pracownikami lub podmiotami wraz z okresem ich trwania
CREATE TABLE dp_transaction
(
	id        			BIGINT UNSIGNED   	NOT NULL AUTO_INCREMENT PRIMARY KEY,	--	Identyfikator transakcji
	id_product			BIGINT UNSIGNED 	NOT NULL,								--  Identyfikator produktu
	id_client			BIGINT UNSIGNED 	NOT NULL,								--  Identyfikator klienta
	time				DATETIME		  	NOT NULL,								--	Czas zakupu
	amount				BIGINT	 			NOT NULL,								--  Ilość kupionego towaru
	price				DECIMAL(9,2)		NOT NULL,								--  Cena zakupu

	FOREIGN KEY (id_product)
		REFERENCES dp_product(id)
		ON DELETE RESTRICT
		ON UPDATE RESTRICT,

	FOREIGN KEY (id_client)
		REFERENCES dp_client(id)
		ON DELETE RESTRICT
		ON UPDATE RESTRICT
);

-- INSERT INTO dp_transaction VALUES(NULL,1,2,"2012-10-03 22:59:52",45,23),
-- 							 (NULL,1,3,"2013-10-03 22:59:52",33,96),
-- 							 (NULL,2,3,"2014-10-03 22:59:52",12,77);