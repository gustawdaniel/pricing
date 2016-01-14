CREATE TABLE dp_tax
(
	id 	BIGINT UNSIGNED 	NOT NULL AUTO_INCREMENT PRIMARY KEY,	-- Identyfikator podatku
	tax DECIMAL(9,2)		NOT NULL 								-- Wartość podatku np 22% to 0.22
);

INSERT INTO dp_tax VALUES(NULL,0.22);


