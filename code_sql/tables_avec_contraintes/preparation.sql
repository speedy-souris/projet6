
--
-- TABLE: preparation
-- 
--  

CREATE TABLE preparation (
  id serial NOT NULL PRIMARY KEY ,
  pizza_recipe character varying NOT NULL ,
  id_ingredient int NOT NULL ,
  id_pizza int NOT NULL 
);


-- 
ALTER TABLE preparation ADD CONSTRAINT p_FK_id_ingredient FOREIGN KEY (id_ingredient) REFERENCES ingredient(id) ON UPDATE NO ACTION ON DELETE NO ACTION;

-- 
ALTER TABLE preparation ADD CONSTRAINT p_FK_id_pizza FOREIGN KEY (id_pizza) REFERENCES pizza(id) ON UPDATE NO ACTION ON DELETE NO ACTION;
