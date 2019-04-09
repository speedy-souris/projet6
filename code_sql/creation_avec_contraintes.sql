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

