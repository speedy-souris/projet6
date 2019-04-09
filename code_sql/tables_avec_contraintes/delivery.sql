
--
-- TABLE: delivery
-- 
--  

CREATE TABLE delivery (
  id serial NOT NULL PRIMARY KEY,
  delivery_time date NOT NULL ,
  id_delivery_mode int NOT NULL 
);

-- 
ALTER TABLE delivery ADD CONSTRAINT d_FK_id_delivery_mode FOREIGN KEY (id_delivery_mode) REFERENCES delivery_mode(id) ON UPDATE NO ACTION ON DELETE NO ACTION;
