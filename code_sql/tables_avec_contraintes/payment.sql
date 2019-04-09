
--
-- TABLE: payment
--
--

CREATE TABLE payment (
  id serial NOT NULL PRIMARY KEY ,
  amount float NOT NULL ,
  id_delivery int NOT NULL ,
  id_shopper int NOT NULL ,
  id_payment_method int NOT NULL
);

--
ALTER TABLE payment ADD CONSTRAINT p_FK_id_delivery FOREIGN KEY (id_delivery) REFERENCES delivery(id) ON UPDATE NO ACTION ON DELETE NO ACTION;

--
ALTER TABLE payment ADD CONSTRAINT p_FK_id_shopper FOREIGN KEY (id_shopper) REFERENCES shopper(id) ON UPDATE NO ACTION ON DELETE NO ACTION;

--
ALTER TABLE payment ADD CONSTRAINT p_FK_id_payment_method FOREIGN KEY (id_payment_method) REFERENCES payment_method(id) ON UPDATE NO ACTION ON DELETE NO ACTION;

