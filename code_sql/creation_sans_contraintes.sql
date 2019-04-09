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

