
--
-- TABLE: pizza_order
-- 
--  

CREATE TABLE pizza_order (
  id serial NOT NULL PRIMARY KEY ,
  date date NOT NULL ,
  id_delivery int NOT NULL ,
  id_payment int NOT NULL ,
  id_status int NOT NULL ,
  id_pizzeria int NOT NULL 
);

-- 
ALTER TABLE pizza_order ADD CONSTRAINT pO_FK_id_delivery FOREIGN KEY (id_delivery) REFERENCES delivery(id) ON UPDATE NO ACTION ON DELETE NO ACTION;

-- 
ALTER TABLE pizza_order ADD CONSTRAINT pO_FK_id_payment FOREIGN KEY (id_payment) REFERENCES payment(id) ON UPDATE NO ACTION ON DELETE NO ACTION;

-- 
ALTER TABLE pizza_order ADD CONSTRAINT pO_FK_id_status FOREIGN KEY (id_status) REFERENCES status(id) ON UPDATE NO ACTION ON DELETE NO ACTION;

-- 
ALTER TABLE pizza_order ADD CONSTRAINT pO_FK_id_pizzeria FOREIGN KEY (id_pizzeria) REFERENCES pizzeria(id) ON UPDATE NO ACTION ON DELETE NO ACTION;
