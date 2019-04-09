
--
-- TABLE: stock
-- 
--  

CREATE TABLE stock (
  id serial NOT NULL PRIMARY KEY ,
  quantity int NOT NULL ,
  id_ingredient int NOT NULL ,
  id_pizzeria int NOT NULL 
);


-- 
ALTER TABLE stock ADD CONSTRAINT s_FK_id_ingredient FOREIGN KEY (id_ingredient) REFERENCES ingredient(id) ON UPDATE NO ACTION ON DELETE NO ACTION;

-- 
ALTER TABLE stock ADD CONSTRAINT s_FK_id_pizzeria FOREIGN KEY (id_pizzeria) REFERENCES pizzeria(id) ON UPDATE NO ACTION ON DELETE NO ACTION;
