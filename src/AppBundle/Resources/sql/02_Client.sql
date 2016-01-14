CREATE TABLE dp_client
(
	id				BIGINT UNSIGNED 	NOT NULL AUTO_INCREMENT PRIMARY KEY,	-- Id 
	name 			VARCHAR(255) 		NOT NULL, 								-- Name of client
	url				VARCHAR(255)		NOT NULL,								-- Url of client
	state			ENUM('activ', 'delay', 'desactivated'),						-- Client State
	start_time		DATETIME			NOT NULL,								-- Time when accound created
	token			CHAR(255)			NOT NULL						
);

-- INSERT INTO dp_client VALUES(NULL,"Tomek","http://prestashop.ilio.pl/modules/pricemod/data-receive.php","activ"," 2008-10-03 22:59:52"),
-- 							(NULL,"Ania","http://127.0.0.1/prestashop/","desactivated","2009-12-01 22:22:11"),
-- 							(NULL,"Magda","http://prestashop.sklep","activ","2010-01-05 13:15:12");