/*Elijah Cordova 1425119*/
/*Lab 3 script3.sql*/

ALTER TABLE dv_film
ADD CONSTRAINT positive_length CHECK (length>0);

UPDATE mg_customers
SET address_id = 1 WHERE address_id IS NULL;

ALTER TABLE mg_customers
ADD CONSTRAINT address_notnull CHECK (address_id IS NOT NULL);

UPDATE dv_address
SET address_id = 1 WHERE address_id IS NULL;

ALTER TABLE dv_address
ADD CONSTRAINT address_notnull CHECK (address_id IS NOT NULL);