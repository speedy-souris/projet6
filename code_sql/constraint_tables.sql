--
-- TABLE ADDRESS CONSTRAIN
--

--
ALTER TABLE address ADD CONSTRAINT a_FK_id_pizzeria FOREIGN KEY (id_pizzeria) REFERENCES pizzeria(id) ON UPDATE NO ACTION ON DELETE NO ACTION;
--
ALTER TABLE address ADD CONSTRAINT a_FK_id_delivery FOREIGN KEY (id_delivery) REFERENCES delivery(id) ON UPDATE NO ACTION ON DELETE NO ACTION;
--
ALTER TABLE address ADD CONSTRAINT a_FK_id_shopper FOREIGN KEY (id_shopper) REFERENCES shopper(id) ON UPDATE NO ACTION ON DELETE NO ACTION;

--
-- TABLE delivery CONSTRAIN
--

--
ALTER TABLE delivery ADD CONSTRAINT d_FK_id_delivery_mode FOREIGN KEY (id_delivery_mode) REFERENCES delivery_mode(id) ON UPDATE NO ACTION ON DELETE NO ACTION;


--
-- TABLE link_pizza_order_pizza
--

--
ALTER TABLE link_pizza_order_pizza ADD CONSTRAINT lPOP_FK_id_pizza FOREIGN KEY (id_pizza) REFERENCES pizza(id) ON UPDATE NO ACTION ON DELETE NO ACTION;
--
ALTER TABLE link_pizza_order_pizza ADD CONSTRAINT lPOP_FK_id_pizza_order FOREIGN KEY (id_pizza_order) REFERENCES pizza_order(id) ON UPDATE NO ACTION ON DELETE NO ACTION;

--
-- TABLE payment
--

--
ALTER TABLE payment ADD CONSTRAINT p_FK_id_delivery FOREIGN KEY (id_delivery) REFERENCES delivery(id) ON UPDATE NO ACTION ON DELETE NO ACTION;
--
ALTER TABLE payment ADD CONSTRAINT p_FK_id_shopper FOREIGN KEY (id_shopper) REFERENCES shopper(id) ON UPDATE NO ACTION ON DELETE NO ACTION;
--
ALTER TABLE payment ADD CONSTRAINT p_FK_id_payment_method FOREIGN KEY (id_payment_method) REFERENCES payment_method(id) ON UPDATE NO ACTION ON DELETE NO ACTION;

--
-- TABLE pizza_order
--

--
ALTER TABLE pizza_order ADD CONSTRAINT pO_FK_id_delivery FOREIGN KEY (id_delivery) REFERENCES delivery(id) ON UPDATE NO ACTION ON DELETE NO ACTION;
--
ALTER TABLE pizza_order ADD CONSTRAINT pO_FK_id_payment FOREIGN KEY (id_payment) REFERENCES payment(id) ON UPDATE NO ACTION ON DELETE NO ACTION;
--
ALTER TABLE pizza_order ADD CONSTRAINT pO_FK_id_status FOREIGN KEY (id_status) REFERENCES status(id) ON UPDATE NO ACTION ON DELETE NO ACTION;
--
ALTER TABLE pizza_order ADD CONSTRAINT pO_FK_id_pizzeria FOREIGN KEY (id_pizzeria) REFERENCES pizzeria(id) ON UPDATE NO ACTION ON DELETE NO ACTION;

--
-- TABLE preparation
--

--
ALTER TABLE preparation ADD CONSTRAINT p_FK_id_ingredient FOREIGN KEY (id_ingredient) REFERENCES ingredient(id) ON UPDATE NO ACTION ON DELETE NO ACTION;
--
ALTER TABLE preparation ADD CONSTRAINT p_FK_id_pizza FOREIGN KEY (id_pizza) REFERENCES pizza(id) ON UPDATE NO ACTION ON DELETE NO ACTION;

--
-- TABLE stock
--

--
ALTER TABLE stock ADD CONSTRAINT s_FK_id_ingredient FOREIGN KEY (id_ingredient) REFERENCES ingredient(id) ON UPDATE NO ACTION ON DELETE NO ACTION;
--
ALTER TABLE stock ADD CONSTRAINT s_FK_id_pizzeria FOREIGN KEY (id_pizzeria) REFERENCES pizzeria(id) ON UPDATE NO ACTION ON DELETE NO ACTION;
