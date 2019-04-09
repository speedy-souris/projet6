
--
-- TABLE: link_pizza_order_pizza
-- 
--  

CREATE TABLE link_pizza_order_pizza (
  id_pizza serial NOT NULL ,
  id_pizza_order serial NOT NULL ,
  PRIMARY KEY (id_pizza,id_pizza_order)
);

-- 
ALTER TABLE link_pizza_order_pizza ADD CONSTRAINT lPOP_FK_id_pizza FOREIGN KEY (id_pizza) REFERENCES pizza(id) ON UPDATE NO ACTION ON DELETE NO ACTION;

-- 
ALTER TABLE link_pizza_order_pizza ADD CONSTRAINT lPOP_FK_id_pizza_order FOREIGN KEY (id_pizza_order) REFERENCES pizza_order(id) ON UPDATE NO ACTION ON DELETE NO ACTION;
