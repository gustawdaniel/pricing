
-- Creating pure database
DROP 	DATABASE IF 	EXISTS 	dp_operative;
CREATE 	DATABASE IF NOT EXISTS 	dp_operative 
	DEFAULT CHARACTER SET = 'utf8' 
	DEFAULT COLLATE 'utf8_unicode_ci';
-- Efficiency 			  ->  utf8_general_ci
-- Sort correction		  ->  utf8_unicode_ci.
USE dp_operative;

-- Creating tables.
 SOURCE 01_Tax.sql;
 SOURCE 02_Client.sql;
 SOURCE 03_Product.sql;
 SOURCE 04_Transaction.sql;
 -- SOURCE 05_Proposition.sql; -- conected to Product 
 -- SOURCE 06_Groups.sql;	-- deleted
