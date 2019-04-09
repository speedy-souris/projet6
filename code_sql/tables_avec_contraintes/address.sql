
--
-- TABLE: address
-- 
--  

CREATE TABLE address (
  id serial PRIMARY KEY,
  address character varying NOT NULL ,
  city character varying NOT NULL ,
  zip_code character varying NOT NULL ,
  id_pizzeria int NOT NULL ,
  id_delivery int NOT NULL ,
  id_shopper int NOT NULL 
);

-- 
ALTER TABLE address ADD CONSTRAINT a_FK_id_pizzeria FOREIGN KEY (id_pizzeria) REFERENCES pizzeria(id) ON UPDATE NO ACTION ON DELETE NO ACTION;

-- 
ALTER TABLE address ADD CONSTRAINT a_FK_id_delivery FOREIGN KEY (id_delivery) REFERENCES delivery(id) ON UPDATE NO ACTION ON DELETE NO ACTION;

-- 
ALTER TABLE address ADD CONSTRAINT a_FK_id_shopper FOREIGN KEY (id_shopper) REFERENCES shopper(id) ON UPDATE NO ACTION ON DELETE NO ACTION;
