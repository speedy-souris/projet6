--
-- CLEARS ALL TABLES (if they exist)
--
DROP TABLE IF EXISTS address CASCADE;
DROP TABLE IF EXISTS delivery CASCADE;
DROP TABLE IF EXISTS delivery_mode CASCADE;
DROP TABLE IF EXISTS ingredient CASCADE;
DROP TABLE IF EXISTS link_pizza_order_pizza CASCADE;
DROP TABLE IF EXISTS payment CASCADE;
DROP TABLE IF EXISTS payment_method CASCADE;
DROP TABLE IF EXISTS pizza CASCADE;
DROP TABLE IF EXISTS pizza_order CASCADE;
DROP TABLE IF EXISTS pizzeria CASCADE;
DROP TABLE IF EXISTS preparation CASCADE;
DROP TABLE IF EXISTS shopper CASCADE;
DROP TABLE IF EXISTS status CASCADE;
DROP TABLE IF EXISTS stock CASCADE;

--
-- CREATION TABLES
--

--
-- TABLE: delivery_mode
--
--

CREATE TABLE delivery_mode (
  id serial NOT NULL PRIMARY KEY ,
  name_mode character varying NOT NULL
);

--
-- TABLE: ingredient
--
--

CREATE TABLE ingredient (
  id serial NOT NULL PRIMARY KEY,
  ingredient_name character varying NOT NULL
);

--
-- TABLE: payment_method
--
--

CREATE TABLE payment_method (
  id serial NOT NULL PRIMARY KEY ,
  name_method character varying NOT NULL
);

--
-- TABLE: pizza
--
--

CREATE TABLE pizza (
  id serial NOT NULL PRIMARY KEY ,
  pizza_name character varying NOT NULL ,
  price float NOT NULL
);

--
-- TABLE: pizzeria
--
--

CREATE TABLE pizzeria (
  id serial NOT NULL PRIMARY KEY ,
  name character varying NOT NULL ,
  cuisine character varying NOT NULL ,
  note int NOT NULL
);

--
-- TABLE: shopper
--
--

CREATE TABLE shopper (
  id serial NOT NULL PRIMARY KEY ,
  name character varying NOT NULL ,
  phone character varying NOT NULL ,
  email character varying NOT NULL
);

--
-- TABLE: status
--
--

CREATE TABLE status (
  id serial NOT NULL PRIMARY KEY ,
  name_status character varying NOT NULL
);

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
-- TABLE: delivery
--
--

CREATE TABLE delivery (
  id serial NOT NULL PRIMARY KEY,
  delivery_time date NOT NULL ,
  id_delivery_mode int NOT NULL
);

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
-- FOREIGN KEY TABLE
--

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
