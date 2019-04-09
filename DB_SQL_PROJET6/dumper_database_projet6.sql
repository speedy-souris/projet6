-- test database for project 6 in the program:
-- Python web application developer of the OpenClassRooms online training center
--
-- script of creation of the database "PROJET6"
--
-- Tables creation:
--     address, delivery, delivery_mode, ingredient, link_pizza_order_pizza,
--     payment, payment_method, pizza, pizza_order, pizzeria, preparation,
--     shopper, status, stock
--
-- Inserting test data
--
-- author: Pascal Macchi
-- date: Février 2019
--

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

--
-- Insert Test Data
--

--
-- DELIVERY_MODE TABLE
--

INSERT INTO delivery_mode (name_mode)
    VALUES
('comptoir'),('domicile');

--
--INGREDIENT TABLE
--

INSERT INTO ingredient (ingredient_name)
    VALUES
('desserts'),('céréales'),('sandwiches'),('pâtes'),('sandwiches'),
('ragoûts'),('ragoûts'),('tartes'),('sandwiches'),('céréales'),
('soupes'),('salades'),('tartes'),('pâtes'),('salades'),
('ragoûts'),('tartes'),('céréales'),('tartes'),('soupes'),
('nouilles'),('nouilles'),('céréales'),('soupes'),('sandwiches'),
('salades'),('fruits de mer'),('pâtes'),('fruits de mer'),('nouilles'),
('sandwiches'),('céréales'),('soupes'),('desserts'),('nouilles'),
('fruits de mer'),('nouilles'),('pâtes'),('tartes'),('sandwiches'),
('sandwiches'),('desserts'),('soupes'),('sandwiches'),('desserts'),
('tartes'),('tartes'),('ragoûts'),('tartes'),('salades'),
('soupes'),('desserts'),('salades'),('sandwiches'),('soupes'),
('ragoûts'),('salades'),('tartes'),('soupes'),('céréales'),
('ragoûts'),('soupes'),('tartes'),('pâtes'),('sandwiches'),
('fruits de mer'),('fruits de mer'),('nouilles'),('céréales'),('ragoûts'),
('tartes'),('salades'),('céréales'),('sandwiches'),('pâtes'),
('sandwiches'),('salades'),('salades'),('pâtes'),('fruits de mer'),
('céréales'),('salades'),('desserts'),('céréales'),('ragoûts'),
('sandwiches'),('soupes'),('nouilles'),('nouilles'),('céréales'),
('pâtes'),('nouilles'),('tartes'),('sandwiches'),('tartes'),
('céréales'),('soupes'),('ragoûts'),('tartes'),('pâtes');

--
-- PAYMENT_METHOD TABLE
--

INSERT INTO payment_method (name_method)
    VALUES
('carte_bleue'), ('espèce'), ('chèque'),
('ticket_restaurant'),('bitcoin');

--
-- PIZZA TABLE
--

INSERT INTO pizza (pizza_name,price)
    VALUES
('pizza_chevre_miel',12),
('pizza_céréales',9),
('pizza_desserts',13),
('pizza_margherita',17),
('pizza_4_fromages',9),
('pizza_nutela',19),
('pizza_reine',16),
('pizza_champignons',14),
('pizza_anchois',9),
('pizza_chorizo',14);

--
-- PIZZERIA TABLE
--

INSERT INTO pizzeria (name,cuisine,note)
    VALUES
('Paris_pizza','pizzas_livrées/emportées',4),
('Lyon_pizza','pizzas_livrées/emportées',8),
('Marseille_pizza','pizzas_livrées/emportées',9);

--
-- SHOPPER TABLE
--

INSERT INTO shopper (name,phone,email)
    VALUES
('Evans','04 27 76 01 10','varius.ultrices@seddictumeleifend.net'),
('Ingram','07 21 85 76 02','augue.malesuada.malesuada@velitegestas.edu'),
('Obrien','03 43 59 74 93','a.sollicitudin@augueeu.ca'),
('Barton','03 58 10 95 43','Etiam@Sedetlibero.ca'),
('Becker','08 34 63 91 78','bibendum.fermentum.metus@rhoncus.org'),
('Collins','03 90 79 30 89','semper.et.lacinia@dolordolor.com'),
('James','02 95 36 58 64','Mauris.vel.turpis@tincidunt.ca'),
('Barlow','07 00 86 36 61','malesuada@consequatdolorvitae.net'),
('Delacruz','04 83 05 15 62','Aliquam@inconsectetuer.com'),
('Haynes','01 30 01 49 52','aliquet.Proin.velit@erosturpis.co.uk'),
('Heath','06 10 29 10 04','enim.nec@magnaPraesentinterdum.edu'),
('Howard','09 57 20 20 75','et@eleifendnon.net'),
('George','03 01 23 60 90','Proin.ultrices.Duis@aliquamerosturpis.net'),
('Noble','06 36 09 79 58','consequat@lacinia.co.uk'),
('Hess','02 78 60 29 86','montes.nascetur.ridiculus@inconsectetuer.net'),
('Logan','07 88 15 98 18','Cras.dictum.ultricies@Nuncut.org'),
('Lloyd','09 05 44 83 09','lacus.Quisque@magnaSedeu.edu'),
('Garrett','01 46 30 22 07','quis.massa.Mauris@adui.co.uk'),
('Chavez','09 80 48 68 24','Phasellus.in@ac.edu'),
('Lucas','05 57 90 12 42','augue.ut.lacus@euarcu.ca'),
('Rodriquez','02 18 00 89 32','ipsum.Curabitur@Curabitursedtortor.edu'),
('Burris','08 33 71 05 74','dictum@liberodui.org'),
('Mcgowan','03 70 51 14 92','consectetuer.mauris@enimCurabiturmassa.org'),
('Crawford','03 67 38 08 87','pede.Cum@lorem.co.uk'),
('Barber','08 99 50 14 60','accumsan@eutellusPhasellus.com'),
('Reed','02 34 03 92 98','tristique@laoreet.net'),
('Forbes','08 41 58 08 71','non.lacinia@faucibusutnulla.org'),
('Lang','04 99 52 49 50','non.dapibus.rutrum@sempererat.co.uk'),
('Tillman','01 43 20 89 66','gravida.mauris.ut@urnasuscipitnonummy.com'),
('Soto','09 32 92 87 65','odio.vel@nonummy.org'),
('Leonard','03 71 65 87 39','sociis@habitantmorbi.net'),
('Mercado','04 18 91 21 24','Nullam@nibh.net'),
('Vasquez','02 32 85 86 14','eu.erat@loremvehicula.edu'),
('Mclean','03 95 53 61 99','eu@justoProinnon.ca'),
('Newman','03 23 32 30 15','felis@euturpis.net'),
('Vargas','07 14 66 96 66','Mauris.vestibulum.neque@nec.net'),
('Crane','07 17 70 72 62','magna@fringillapurusmauris.ca'),
('Burks','04 04 62 44 71','aliquam@nonnisi.org'),
('Burnett','09 46 35 62 57','Morbi.accumsan.laoreet@vestibulum.net'),
('Gutierrez','02 15 67 51 33','blandit@egestasSedpharetra.org'),
('Obrien','02 00 78 36 75','pede.ultrices@nibh.com'),
('Garcia','05 03 05 06 95','scelerisque.neque@mollisduiin.ca'),
('Carson','01 53 11 08 35','mus.Proin.vel@risusIn.edu'),
('Perez','02 69 03 86 28','Nunc.quis.arcu@massa.edu'),
('Charles','03 48 29 11 27','orci@euaccumsan.co.uk'),
('Adams','02 88 72 08 01','Aliquam.rutrum@lacuspedesagittis.net'),
('Dillon','05 40 70 85 68','dolor.elit.pellentesque@est.co.uk'),
('Stephens','06 28 31 52 28','sit@arcu.ca'),
('Joyner','05 11 91 03 46','libero.Proin.mi@interdumSed.com'),
('Delacruz','04 55 25 04 78','fringilla.euismod@Cras.ca'),
('Tyson','09 93 19 08 08','sapien.molestie.orci@neceleifend.net'),
('Mckee','07 24 21 42 28','Vivamus@natoque.net'),
('Petty','02 89 87 90 14','arcu.Vestibulum.ante@risus.com'),
('Richards','04 67 92 92 86','tincidunt@feugiatSednec.org'),
('Barnes','07 13 13 28 67','eu@dignissimMaecenas.ca'),
('Maynard','04 83 01 07 30','lacus@eu.co.uk'),
('Trevino','07 50 28 98 36','augue.eu.tellus@ornarelectus.org'),
('Bridges','04 47 52 27 07','eu.accumsan.sed@lacus.net'),
('Lane','07 28 61 53 46','ipsum.dolor.sit@lectusNullam.net'),
('Walton','05 18 74 26 26','nunc@leoCrasvehicula.edu'),
('Hansen','01 92 27 63 52','Aliquam@urnaconvalliserat.edu'),
('Pate','08 68 71 27 13','quis@estMauris.com'),
('Silva','07 56 08 90 05','ridiculus.mus.Aenean@enimdiam.ca'),
('Burt','04 50 73 63 44','malesuada.fringilla.est@semutdolor.com'),
('Fletcher','05 33 64 88 95','eleifend.Cras@velarcuCurabitur.edu'),
('Alford','09 19 92 73 14','pellentesque.a.facilisis@lorem.co.uk'),
('Santiago','06 66 49 85 60','eu@sit.org'),
('Caldwell','07 73 77 95 71','Nam.porttitor.scelerisque@vestibulumloremsit.co.uk'),
('Gay','05 73 52 89 18','Aliquam.ultrices.iaculis@sedtortor.org'),
('Hendricks','09 24 20 24 59','Suspendisse.dui.Fusce@nonbibendum.co.uk'),
('Hoover','04 99 69 03 18','molestie@dictum.com'),
('Boone','06 63 15 27 77','Quisque.ornare.tortor@dui.org'),
('Kirby','05 58 31 46 44','blandit@Proin.ca'),
('Park','04 54 64 95 78','cursus@cursusNuncmauris.org'),
('Rivers','01 67 21 61 22','sagittis.Nullam@mauris.org'),
('Mann','02 36 46 27 67','egestas.Fusce.aliquet@posuere.co.uk'),
('Gates','07 49 97 04 27','pulvinar@egestas.com'),
('Mathews','07 88 28 28 40','vel.arcu.Curabitur@massaQuisque.org'),
('Boyer','06 08 26 81 90','sed@semmagna.com'),
('Frank','07 52 44 77 41','diam@dolor.ca'),
('Reid','04 10 23 64 02','facilisis.Suspendisse.commodo@non.com'),
('Knapp','03 05 28 87 65','quam@diam.net'),
('Lawrence','05 99 78 28 64','lacinia.vitae@blanditcongue.ca'),
('Wilkerson','08 61 90 06 24','turpis@maurissapiencursus.co.uk'),
('Jefferson','08 41 43 83 81','Nunc.ac.sem@pharetraQuisque.ca'),
('Collier','06 05 97 31 66','vel.est.tempor@accumsan.com'),
('Key','04 46 57 51 91','Suspendisse@mattisornare.net'),
('Farmer','03 07 65 44 42','ridiculus@anteMaecenas.co.uk'),
('Woodward','01 98 90 26 95','at.iaculis.quis@sollicitudinorci.org'),
('Edwards','09 56 10 84 62','euismod.et.commodo@Phasellusinfelis.edu'),
('Pacheco','05 63 90 47 88','Nam.interdum.enim@arcuSedet.com'),
('Gamble','02 69 32 23 30','odio.a@orci.edu'),
('Shelton','04 03 64 45 55','velit.eget.laoreet@risusodioauctor.org'),
('Herman','07 44 85 78 79','orci.adipiscing.non@et.com'),
('Mcintyre','01 77 12 62 48','Quisque.fringilla@enimSed.ca'),
('Dillon','06 78 29 86 47','magna.et.ipsum@nonnisiAenean.net'),
('Fitzgerald','02 70 72 60 09','Proin@aliquetliberoInteger.co.uk'),
('Maynard','06 24 94 71 85','purus.Maecenas.libero@ornarelectus.net'),
('Vincent','09 12 50 68 66','consequat.auctor.nunc@tempordiam.com'),
('Johns','06 30 68 25 52','at.risus@mi.org');

--
-- STATUS TABLE
--

INSERT INTO status (name_status)
    VALUES
('en_préparation'),
('livrer'),
('terminer'),
('en_livraison'),
('en_attente');

--
--
-- stock pizzeria 1
--
--
INSERT INTO stock (quantity,id_ingredient,id_pizzeria)
    VALUES

(361,(SELECT id FROM ingredient ORDER BY id LIMIT 1),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1)
),

(294,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 1),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1)
),

(172,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 2),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1)
),

(55,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 3),
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1)
),

(191,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 4),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1)
),

(400,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 5),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1)
),

(467,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 6),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1)
),

(673,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 7),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1)
),

(504,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 8),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1)
),

(161,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 9),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1)
),

(144,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 10),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1)
),

(213,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 11),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1)
),

(459,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 12),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1)
),

(269,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 13),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1)
),

(63,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 14),
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1)
),

(897,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 15),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1)
),

(258,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 16),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1)
),

(91,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 17),
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1)
),

(131,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 18),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1)
),

(381,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 19),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1)
),

(16,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 20),
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1)
),

(543,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 21),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1)
),

(897,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 22),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1)
),

(673,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 23),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1)
),

(348,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 24),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1)
),

(904,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 25),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1)
),

(771,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 26),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1)
),

(221,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 27),
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1)
),

(487,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 28),
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1)
),

(526,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 29),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1)
),

(968,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 30),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1)
),

(370,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 31),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1)
),

(674,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 32),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1)
),

(86,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 33),
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1)
),

(736,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 34),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1)
),

(84,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 35),
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1)
),

(449,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 36),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1)
),

(67,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 37),
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1)
),

(993,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 38),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1)
),

(2,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 39),
   (SELECT id FROM pizzeria ORDER BY id LIMIT 1)
),

(434,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 40),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1)
),

(25,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 41),
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1)
),

(632,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 42),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1)
),

(229,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 43),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1)
),

(983,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 44),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1)
),

(310,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 45),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1)
),

(637,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 46),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1)
),

(344,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 47),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1)
),

(334,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 48),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1)
),

(751,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 49),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1)
),

(62,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 50),
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1)
),

(822,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 51),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1)
),

(448,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 52),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1)
),

(85,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 53),
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1)
),

(771,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 54),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1)
),

(680,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 55),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1)
),

(910,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 56),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1)
),

(799,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 57),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1)
),

(756,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 58),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1)
),

(175,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 59),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1)
),

(231,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 60),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1)
),

(383,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 61),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1)
),

(740,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 62),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1)
),

(557,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 63),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1)
),

(737,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 64),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1)
),

(612,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 65),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1)
),

(372,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 66),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1)
),

(805,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 67),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1)
),

(907,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 68),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1)
),

(776,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 69),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1)
),

(794,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 70),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1)
),

(55,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 71),
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1)
),

(256,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 72),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1)
),

(974,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 73),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1)
),

(925,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 74),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1)
),

(507,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 75),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1)
),

(931,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 76),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1)
),

(677,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 77),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1)
),

(275,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 78),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1)
),

(473,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 79),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1)
),

(867,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 80),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1)
),

(507,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 81),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1)
),

(291,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 82),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1)
),

(382,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 83),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1)
),

(7,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 84),
   (SELECT id FROM pizzeria ORDER BY id LIMIT 1)
),

(437,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 85),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1)
),

(734,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 86),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1)
),

(805,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 87),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1)
),

(818,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 88),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1)
),

(797,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 89),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1)
),

(653,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 90),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1)
),

(479,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 91),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1)
),

(555,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 92),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1)
),

(11,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 93),
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1)
),

(325,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 94),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1)
),

(657,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 95),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1)
),

(422,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 96),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1)
),

(263,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 97),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1)
),

(762,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 98),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1)
),

(529,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 99),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1)
),

--
--
-- stock pizzeria 2
--
--
(361,(SELECT id FROM ingredient ORDER BY id LIMIT 1),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1)
),

(294,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 1),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1)
),

(172,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 2),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1)
),

(55,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 3),
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1)
),

(191,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 4),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1)
),

(400,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 5),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1)
),

(467,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 6),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1)
),

(673,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 7),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1)
),

(504,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 8),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1)
),

(161,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 9),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1)
),

(144,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 10),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1)
),

(213,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 11),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1)
),

(459,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 12),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1)
),

(269,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 13),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1)
),

(63,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 14),
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1)
),

(897,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 15),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1)
),

(258,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 16),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1)
),

(91,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 17),
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1)
),

(131,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 18),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1)
),

(381,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 19),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1)
),

(16,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 20),
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1)
),

(543,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 21),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1)
),

(897,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 22),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1)
),

(673,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 23),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1)
),

(348,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 24),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1)
),

(904,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 25),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1)
),

(771,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 26),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1)
),

(221,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 27),
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1)
),

(487,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 28),
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1)
),

(526,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 29),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1)
),

(968,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 30),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1)
),

(370,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 31),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1)
),

(674,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 32),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1)
),

(86,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 33),
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1)
),

(736,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 34),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1)
),

(84,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 35),
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1)
),

(449,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 36),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1)
),

(67,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 37),
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1)
),

(993,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 38),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1)
),

(2,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 39),
   (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1)
),

(434,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 40),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1)
),

(25,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 41),
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1)
),

(632,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 42),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1)
),

(229,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 43),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1)
),

(983,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 44),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1)
),

(310,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 45),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1)
),

(637,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 46),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1)
),

(344,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 47),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1)
),

(334,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 48),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1)
),

(751,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 49),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1)
),

(62,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 50),
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1)
),

(822,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 51),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1)
),

(448,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 52),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1)
),

(85,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 53),
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1)
),

(771,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 54),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1)
),

(680,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 55),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1)
),

(910,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 56),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1)
),

(799,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 57),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1)
),

(756,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 58),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1)
),

(175,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 59),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1)
),

(231,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 60),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1)
),

(383,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 61),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1)
),

(740,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 62),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1)
),

(557,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 63),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1)
),

(737,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 64),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1)
),

(612,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 65),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1)
),

(372,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 66),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1)
),

(805,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 67),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1)
),

(907,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 68),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1)
),

(776,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 69),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1)
),

(794,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 70),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1)
),

(55,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 71),
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1)
),

(256,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 72),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1)
),

(974,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 73),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1)
),

(925,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 74),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1)
),

(507,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 75),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1)
),

(931,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 76),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1)
),

(677,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 77),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1)
),

(275,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 78),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1)
),

(473,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 79),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1)
),

(867,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 80),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1)
),

(507,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 81),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1)
),

(291,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 82),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1)
),

(382,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 83),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1)
),

(7,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 84),
   (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1)
),

(437,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 85),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1)
),

(734,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 86),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1)
),

(805,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 87),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1)
),

(818,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 88),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1)
),

(797,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 89),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1)
),

(653,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 90),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1)
),

(479,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 91),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1)
),

(555,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 92),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1)
),

(11,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 93),
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1)
),

(325,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 94),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1)
),

(657,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 95),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1)
),

(422,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 96),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1)
),

(263,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 97),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1)
),

(762,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 98),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1)
),

(529,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 99),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1)
),

--
--
-- stock pizzeria 3
--
--
(361,(SELECT id FROM ingredient ORDER BY id LIMIT 1),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2)
),

(294,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 1),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2)
),

(172,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 2),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2)
),

(55,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 3),
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2)
),

(191,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 4),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2)
),

(400,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 5),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2)
),

(467,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 6),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2)
),

(673,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 7),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2)
),

(504,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 8),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2)
),

(161,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 9),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2)
),

(144,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 10),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2)
),

(213,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 11),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2)
),

(459,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 12),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2)
),

(269,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 13),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2)
),

(63,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 14),
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2)
),

(897,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 15),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2)
),

(258,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 16),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2)
),

(91,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 17),
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2)
),

(131,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 18),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2)
),

(381,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 19),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2)
),

(16,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 20),
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2)
),

(543,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 21),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2)
),

(897,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 22),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2)
),

(673,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 23),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2)
),

(348,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 24),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2)
),

(904,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 25),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2)
),

(771,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 26),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2)
),

(221,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 27),
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2)
),

(487,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 28),
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2)
),

(526,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 29),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2)
),

(968,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 30),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2)
),

(370,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 31),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2)
),

(674,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 32),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2)
),

(86,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 33),
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2)
),

(736,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 34),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2)
),

(84,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 35),
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2)
),

(449,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 36),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2)
),

(67,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 37),
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2)
),

(993,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 38),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2)
),

(2,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 39),
   (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2)
),

(434,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 40),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2)
),

(25,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 41),
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2)
),

(632,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 42),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2)
),

(229,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 43),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2)
),

(983,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 44),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2)
),

(310,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 45),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2)
),

(637,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 46),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2)
),

(344,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 47),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2)
),

(334,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 48),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2)
),

(751,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 49),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2)
),

(62,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 50),
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2)
),

(822,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 51),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2)
),

(448,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 52),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2)
),

(85,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 53),
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2)
),

(771,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 54),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2)
),

(680,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 55),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2)
),

(910,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 56),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2)
),

(799,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 57),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2)
),

(756,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 58),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2)
),

(175,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 59),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2)
),

(231,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 60),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2)
),

(383,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 61),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2)
),

(740,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 62),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2)
),

(557,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 63),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2)
),

(737,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 64),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2)
),

(612,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 65),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2)
),

(372,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 66),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2)
),

(805,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 67),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2)
),

(907,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 68),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2)
),

(776,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 69),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2)
),

(794,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 70),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2)
),

(55,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 71),
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2)
),

(256,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 72),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2)
),

(974,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 73),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2)
),

(925,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 74),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2)
),

(507,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 75),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2)
),

(931,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 76),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2)
),

(677,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 77),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2)
),

(275,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 78),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2)
),

(473,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 79),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2)
),

(867,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 80),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2)
),

(507,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 81),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2)
),

(291,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 82),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2)
),

(382,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 83),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2)
),

(7,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 84),
   (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2)
),

(437,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 85),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2)
),

(734,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 86),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2)
),

(805,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 87),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2)
),

(818,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 88),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2)
),

(797,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 89),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2)
),

(653,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 90),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2)
),

(479,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 91),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2)
),

(555,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 92),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2)
),

(11,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 93),
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2)
),

(325,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 94),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2)
),

(657,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 95),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2)
),

(422,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 96),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2)
),

(263,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 97),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2)
),

(762,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 98),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2)
),

(529,(SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 99),
     (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2)
);

--
-- INSERTION PREPARATION
--

INSERT INTO preparation (
    pizza_recipe,id_pizza,id_ingredient
)
    VALUES
(114,(SELECT id FROM pizza ORDER BY id LIMIT 1),
     (SELECT id FROM ingredient ORDER BY id LIMIT 1)
),

(3,(SELECT id FROM pizza ORDER BY id LIMIT 1),
   (SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 1)
),

(106,(SELECT id FROM pizza ORDER BY id LIMIT 1),
     (SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 2)
),

(27,(SELECT id FROM pizza ORDER BY id LIMIT 1),
    (SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 3)
),

(59,(SELECT id FROM pizza ORDER BY id LIMIT 1),
    (SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 4)
),

(34,(SELECT id FROM pizza ORDER BY id LIMIT 1),
    (SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 5)
),

(58,(SELECT id FROM pizza ORDER BY id LIMIT 1),
    (SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 6)
),

(81,(SELECT id FROM pizza ORDER BY id LIMIT 1),
    (SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 7)
),

(57,(SELECT id FROM pizza ORDER BY id LIMIT 1),
    (SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 8)
),

(84,(SELECT id FROM pizza ORDER BY id LIMIT 1),
    (SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 9)
),

(143,(SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 1),
     (SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 10)
),

(99,(SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 1),
    (SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 11)
),

(138,(SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 1),
     (SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 12)
),

(94,(SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 1),
    (SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 13)
),

(4,(SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 1),
   (SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 14)
),

(79,(SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 1),
    (SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 15)
),

(103,(SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 1),
     (SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 16)
),

(38,(SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 1),
    (SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 17)
),

(3,(SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 1),
   (SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 18)
),

(78,(SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 1),
    (SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 19)
),

(32,(SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 2),
    (SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 20)
),

(53,(SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 2),
    (SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 21)
),

(121,(SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 2),
     (SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 22)
),

(113,(SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 2),
     (SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 23)
),

(104,(SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 2),
     (SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 24)
),

(11,(SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 2),
    (SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 25)
),

(55,(SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 2),
    (SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 26)
),

(100,(SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 2),
     (SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 27)
),

(91,(SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 2),
    (SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 28)
),

(144,(SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 2),
     (SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 29)
),

(139,(SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 3),
     (SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 30)
),

(73,(SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 3),
    (SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 31)
),

(27,(SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 3),
    (SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 32)
),

(84,(SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 3),
    (SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 33)
),

(91,(SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 3),
    (SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 34)
),

(59,(SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 3),
    (SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 35)
),

(79,(SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 3),
    (SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 36)
),

(128,(SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 3),
     (SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 37)
),

(26,(SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 3),
    (SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 38)
),

(18,(SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 3),
    (SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 39)
),

(51,(SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 4),
    (SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 40)
),

(82,(SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 4),
    (SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 41)
),

(135,(SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 4),
     (SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 42)
),

(78,(SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 4),
     (SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 43)
),

(116,(SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 4),
     (SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 44)
),

(99,(SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 4),
    (SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 45)
),

(4,(SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 4),
   (SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 46)
),

(8,(SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 4),
   (SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 47)
),

(134,(SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 4),
     (SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 48)
),

(25,(SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 4),
    (SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 49)
),

(114,(SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 5),
     (SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 50)
),

(3,(SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 5),
   (SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 51)
),

(106,(SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 5),
     (SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 52)
),

(27,(SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 5),
    (SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 53)
),

(59,(SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 5),
    (SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 54)
),

(34,(SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 5),
    (SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 55)
),

(58,(SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 5),
    (SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 56)
),

(81,(SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 5),
    (SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 57)
),

(57,(SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 5),
    (SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 58)
),

(84,(SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 5),
    (SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 59)
),

(143,(SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 6),
     (SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 60)
),

(99,(SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 6),
    (SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 61)
),

(138,(SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 6),
     (SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 62)
),

(94,(SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 6),
    (SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 63)
),

(4,(SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 6),
   (SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 64)
),

(79,(SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 6),
    (SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 65)
),

(103,(SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 6),
     (SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 66)
),

(38,(SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 6),
    (SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 67)
),

(3,(SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 6),
   (SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 68)
),

(78,(SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 6),
    (SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 69)
),

(32,(SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 7),
    (SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 70)
),

(53,(SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 7),
    (SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 71)
),

(121,(SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 7),
     (SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 72)
),

(113,(SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 7),
     (SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 73)
),

(104,(SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 7),
     (SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 74)
),

(11,(SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 7),
    (SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 75)
),

(55,(SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 7),
    (SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 76)
),

(100,(SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 7),
     (SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 77)
),

(91,(SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 7),
    (SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 78)
),

(144,(SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 7),
     (SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 79)
),

(139,(SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 8),
     (SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 80)
),

(73,(SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 8),
    (SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 81)
),

(27,(SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 8),
    (SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 82)
),

(84,(SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 8),
    (SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 83)
),

(91,(SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 8),
    (SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 84)
),

(59,(SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 8),
    (SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 85)
),

(79,(SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 8),
    (SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 86)
),

(128,(SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 8),
     (SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 87)
),

(26,(SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 8),
    (SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 88)
),

(18,(SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 8),
    (SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 89)
),

(51,(SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 9),
    (SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 90)
),

(82,(SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 9),
    (SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 91)
),

(135,(SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 9),
     (SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 92)
),

(78,(SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 9),
     (SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 93)
),

(116,(SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 9),
     (SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 94)
),

(99,(SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 9),
    (SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 95)
),

(4,(SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 9),
   (SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 96)
),

(8,(SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 9),
   (SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 97)
),

(134,(SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 9),
     (SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 98)
),

(25,(SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 9),
    (SELECT id FROM ingredient ORDER BY id LIMIT 1 OFFSET 99)
);

--
-- INSERT DELIVERY
--

INSERT INTO delivery (delivery_time,id_delivery_mode)
    VALUES
('15-01-2018 23:05:32',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1)
),

('19-11-2018 03:36:07',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1 OFFSET 1)
),

('12-08-2018 10:50:32',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1 OFFSET 1)
),

('11-03-2018 19:15:47',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1)
),

('20-08-2018 07:51:25',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1 OFFSET 1)
),

('08-07-2018 13:21:33',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1 OFFSET 1)
),

('05-03-2018 00:43:02',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1 OFFSET 1)
),

('12-07-2018 23:18:40',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1)
),

('23-09-2018 18:31:40',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1)
),

('19-08-2018 22:40:50',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1)
),

('15-08-2018 15:46:18',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1 OFFSET 1)
),

('19-09-2018 20:10:59',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1 OFFSET 1)
),

('31-01-2018 05:17:21',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1 OFFSET 1)
),

('24-08-2018 10:56:35',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1)
),

('24-09-2018 14:05:21',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1 OFFSET 1)
),

('23-04-2018 15:19:31',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1)
),

('25-08-2018 20:44:50',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1 OFFSET 1)
),

('20-09-2018 10:24:13',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1)
),

('23-03-2018 07:20:15',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1)
),

('10-06-2018 04:52:35',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1)
),

('18-12-2018 19:38:58',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1)
),

('29-08-2018 11:42:38',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1 OFFSET 1)
),

('07-09-2018 19:42:54',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1 OFFSET 1)
),

('21-08-2018 18:23:43',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1 OFFSET 1)
),

('27-12-2018 01:59:30',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1 OFFSET 1)
),

('24-02-2018 18:01:57',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1 OFFSET 1)
),

('26-10-2018 22:19:09',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1 OFFSET 1)
),

('14-01-2018 05:58:40',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1 OFFSET 1)
),

('29-06-2018 09:25:54',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1)
),

('07-07-2018 03:29:36',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1 OFFSET 1)
),

('06-09-2018 02:36:19',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1)
),

('05-09-2018 18:50:33',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1)
),

('21-12-2018 05:00:16',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1 OFFSET 1)
),

('28-11-2018 03:01:01',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1 OFFSET 1)
),

('23-02-2018 18:58:48',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1 OFFSET 1)
),
('23-09-2018 03:49:03',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1 OFFSET 1)
),

('19-10-2018 09:54:00',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1 OFFSET 1)
),

('14-02-2018 08:48:58',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1 OFFSET 1)
),

('10-02-2018 21:35:47',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1 OFFSET 1)
),

('30-11-2018 17:21:52',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1 OFFSET 1)
),

('03-09-2018 04:28:53',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1)
),

('15-05-2018 21:51:49',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1 OFFSET 1)
),

('07-03-2018 14:25:02',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1 OFFSET 1)
),

('02-07-2018 08:05:20',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1 OFFSET 1)
),

('04-06-2018 16:28:29',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1)
),

('26-12-2018 23:13:30',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1 OFFSET 1)
),

('02-08-2018 13:21:04',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1)
),

('28-10-2018 16:23:31',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1)
),

('25-01-2018 15:19:51',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1)
),

('06-08-2018 08:06:30',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1)
),

('13-05-2018 21:47:55',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1)
),

('10-01-2018 19:22:07',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1)
),

('30-07-2018 17:45:52',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1)
),

('20-12-2018 20:26:34',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1)
),

('09-10-2018 03:04:41',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1)
),

('15-05-2018 13:37:07',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1)
),

('25-03-2018 09:39:48',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1)
),

('06-09-2018 08:36:19',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1)
),

('30-06-2018 15:31:47',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1)
),

('30-11-2018 23:08:25',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1)
),

('14-04-2018 07:40:39',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1)
),

('22-09-2018 16:13:13',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1 OFFSET 1)
),

('10-02-2018 12:44:15',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1 OFFSET 1)
),

('17-08-2018 21:25:50',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1 OFFSET 1)
),

('07-10-2018 17:51:52',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1 OFFSET 1)
),

('10-12-2018 19:56:45',
   (SELECT id FROM delivery_mode ORDER BY id LIMIT 1 OFFSET 1)
),

('10-06-2018 02:36:03',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1 OFFSET 1)
),

('21-07-2018 14:35:06',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1 OFFSET 1)
),

('09-01-2018 07:20:55',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1 OFFSET 1)
),

('12-12-2018 00:11:38',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1 OFFSET 1)
),

('29-10-2018 23:31:34',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1 OFFSET 1)
),

('05-09-2018 04:01:02',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1 OFFSET 1)
),

('15-05-2018 04:08:06',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1 OFFSET 1)
),

('25-12-2018 14:38:30',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1 OFFSET 1)
),

('18-12-2018 07:36:26',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1 OFFSET 1)
),

('10-12-2018 23:26:15',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1 OFFSET 1)
),

('02-09-2018 09:54:23',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1 OFFSET 1)
),

('06-10-2018 05:42:42',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1)
),

('25-11-2018 23:27:20',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1)
),

('26-12-2018 23:43:07',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1 OFFSET 1)
),

('13-09-2018 18:53:50',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1 OFFSET 1)
),

('24-02-2018 14:29:15',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1 OFFSET 1)
),

('01-07-2018 09:38:17',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1 OFFSET 1)
),

('27-11-2018 20:59:06',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1 OFFSET 1)
),

('14-06-2018 19:57:00',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1 OFFSET 1)
),

('30-08-2018 15:31:02',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1)
),

('09-07-2018 03:19:47',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1 OFFSET 1)
),

('10-04-2018 04:52:28',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1 OFFSET 1)
),

('30-11-2018 02:26:12',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1)
),

('18-10-2018 05:04:46',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1 OFFSET 1)
),

('09-08-2018 12:54:49',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1)
),

('20-10-2018 09:29:25',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1)
),

('27-02-2018 23:46:40',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1)
),

('18-08-2018 12:02:21',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1 OFFSET 1)
),

('07-07-2018 11:50:32',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1 OFFSET 1)
),

('22-06-2018 01:47:16',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1 OFFSET 1)
),

('29-11-2018 12:53:53',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1 OFFSET 1)
),

('20-05-2018 15:00:28',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1 OFFSET 1)
),

('13-01-2018 11:04:12',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1 OFFSET 1)
),

('23-11-2018 04:33:04',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1)
);

--
-- ADRESS PIZZERIA
--

INSERT INTO address (address,city,zip_code,id_pizzeria,id_delivery,id_shopper)
    VALUES

--
-- PIZZERIA 1
--
('CP 718, 9841 Quam, Av.','Mottola',75000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1),
    (SELECT id FROM shopper ORDER BY id LIMIT 1)
),

('CP 787, 1993 Quis Chemin','Barchi',88000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 1),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 1)
),

('837-5481 In Avenue','Harbour Grace',30000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 2),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 2)
),

('Appartement 292-2865 Auctor Route','Qualicum Beach',50000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 3),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 3)
),

('5476 Ligula. Rue','Westlock',20000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 4),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 4)
),

('3537 Ac Chemin','Wondelgem',30000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 5),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 5)
),

('CP 164, 7538 Nec Rd.','Kirkland',10000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 6),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 6)
),

('9772 Eget Av.','Oamaru',70000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 7),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 7)
),

  ('392-812 Mus. Ave','Marcq-en-Baroeul',40000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 8),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 8)
),

  ('345-3202 A Av.','College',10000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 9),
    (SELECT id FROM shopper ORDER BY id  LIMIT 1 OFFSET 9)
),

('CP 718, 9841 Quam, Av.','Mottola',75000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 10),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 10)
),

('CP 787, 1993 Quis Chemin','Barchi',88000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 11),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 11)
),

('837-5481 In Avenue','Harbour Grace',30000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 12),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 12)
),

('Appartement 292-2865 Auctor Route','Qualicum Beach',50000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 13),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 13)
),

('5476 Ligula. Rue','Westlock',20000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 14),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 14)
),

('3537 Ac Chemin','Wondelgem',30000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 15),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 15)
),

('CP 164, 7538 Nec Rd.','Kirkland',10000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 16),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 16)
),

('9772 Eget Av.','Oamaru',70000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 17),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 17)
),

('392-812 Mus. Ave','Marcq-en-Baroeul',40000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 18),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 18)
),

('345-3202 A Av.','College',10000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 19),
    (SELECT id FROM shopper ORDER BY id  LIMIT 1 OFFSET 19)
),

('CP 718, 9841 Quam, Av.','Mottola',75000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 20),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 20)
),

('CP 787, 1993 Quis Chemin','Barchi',88000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 21),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 21)
),

('837-5481 In Avenue','Harbour Grace',30000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 22),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 22)
),

('Appartement 292-2865 Auctor Route','Qualicum Beach',50000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 23),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 23)
),

('5476 Ligula. Rue','Westlock',20000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 24),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 24)
),

('3537 Ac Chemin','Wondelgem',30000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 25),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 25)
),

('CP 164, 7538 Nec Rd.','Kirkland',10000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 26),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 26)
),

('9772 Eget Av.','Oamaru',70000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 27),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 27)
),

('392-812 Mus. Ave','Marcq-en-Baroeul',40000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 28),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 28)
),

('345-3202 A Av.','College',10000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 29),
    (SELECT id FROM shopper ORDER BY id  LIMIT 1 OFFSET 29)
),

('CP 718, 9841 Quam, Av.','Mottola',75000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 30),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 30)
),

('CP 787, 1993 Quis Chemin','Barchi',88000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 31),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 31)
),

('837-5481 In Avenue','Harbour Grace',30000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 32),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 32)
),

('Appartement 292-2865 Auctor Route','Qualicum Beach',50000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 33),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 33)
),

('5476 Ligula. Rue','Westlock',20000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 34),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 34)
),

('3537 Ac Chemin','Wondelgem',30000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 35),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 35)
),

('CP 164, 7538 Nec Rd.','Kirkland',10000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 36),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 36)
),

('9772 Eget Av.','Oamaru',70000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 37),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 37)
),

('392-812 Mus. Ave','Marcq-en-Baroeul',40000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 38),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 38)
),

('345-3202 A Av.','College',10000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 39),
    (SELECT id FROM shopper ORDER BY id  LIMIT 1 OFFSET 39)
),

('CP 718, 9841 Quam, Av.','Mottola',75000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 40),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 40)
),

('CP 787, 1993 Quis Chemin','Barchi',88000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 41),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 41)),

('837-5481 In Avenue','Harbour Grace',30000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 42),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 42)
),

('Appartement 292-2865 Auctor Route','Qualicum Beach',50000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 43),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 43)
),

('5476 Ligula. Rue','Westlock',20000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 44),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 44)
),

('3537 Ac Chemin','Wondelgem',30000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 45),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 45)
),

('CP 164, 7538 Nec Rd.','Kirkland',10000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 46),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 46)),

('9772 Eget Av.','Oamaru',70000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 47),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 47)
),

('392-812 Mus. Ave','Marcq-en-Baroeul',40000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 48),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 48)
),

('345-3202 A Av.','College',10000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 49),
    (SELECT id FROM shopper ORDER BY id  LIMIT 1 OFFSET 49)
),

('CP 718, 9841 Quam, Av.','Mottola',75000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 50),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 50)
),

('CP 787, 1993 Quis Chemin','Barchi',88000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 51),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 51)
),

('837-5481 In Avenue','Harbour Grace',30000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 52),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 52)
),

('Appartement 292-2865 Auctor Route','Qualicum Beach',50000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 53),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 53)
),

('5476 Ligula. Rue','Westlock',20000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 54),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 54)
),

('3537 Ac Chemin','Wondelgem',30000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 55),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 55)
),

('CP 164, 7538 Nec Rd.','Kirkland',10000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 56),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 56)
),

('9772 Eget Av.','Oamaru',70000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 57),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 57)
),

('392-812 Mus. Ave','Marcq-en-Baroeul',40000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 58),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 58)
),

('345-3202 A Av.','College',10000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 59),
    (SELECT id FROM shopper ORDER BY id  LIMIT 1 OFFSET 59)
),

('CP 718, 9841 Quam, Av.','Mottola',75000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 60),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 60)
),

('CP 787, 1993 Quis Chemin','Barchi',88000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 61),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 61)
),

('837-5481 In Avenue','Harbour Grace',30000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 62),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 62)
),

('Appartement 292-2865 Auctor Route','Qualicum Beach',50000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 63),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 63)
),

('5476 Ligula. Rue','Westlock',20000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 64),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 64)
),

('3537 Ac Chemin','Wondelgem',30000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 65),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 65)
),

('CP 164, 7538 Nec Rd.','Kirkland',10000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 66),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 66)
),

('9772 Eget Av.','Oamaru',70000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 67),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 67)
),

('392-812 Mus. Ave','Marcq-en-Baroeul',40000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 68),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 68)
),

('345-3202 A Av.','College',10000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 69),
    (SELECT id FROM shopper ORDER BY id  LIMIT 1 OFFSET 69)
),

('CP 718, 9841 Quam, Av.','Mottola',75000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 70),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 70)
),

('CP 787, 1993 Quis Chemin','Barchi',88000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 71),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 71)
),

('837-5481 In Avenue','Harbour Grace',30000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 72),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 72)
),

('Appartement 292-2865 Auctor Route','Qualicum Beach',50000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 73),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 73)
),

('5476 Ligula. Rue','Westlock',20000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 74),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 74)
),

('3537 Ac Chemin','Wondelgem',30000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 75),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 75)
),

('CP 164, 7538 Nec Rd.','Kirkland',10000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 76),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 76)
),

('9772 Eget Av.','Oamaru',70000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 77),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 77)
),

('392-812 Mus. Ave','Marcq-en-Baroeul',40000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 78),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 78)
),

('345-3202 A Av.','College',10000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 79),
    (SELECT id FROM shopper ORDER BY id  LIMIT 1 OFFSET 79)
),

('CP 718, 9841 Quam, Av.','Mottola',75000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 80),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 80)
),

('CP 787, 1993 Quis Chemin','Barchi',88000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 81),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 81)
),

('837-5481 In Avenue','Harbour Grace',30000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 82),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 82)
),

('Appartement 292-2865 Auctor Route','Qualicum Beach',50000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 83),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 83)
),

('5476 Ligula. Rue','Westlock',20000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 84),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 84)
),

('3537 Ac Chemin','Wondelgem',30000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 85),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 85)
),

('CP 164, 7538 Nec Rd.','Kirkland',10000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 86),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 86)
),

('9772 Eget Av.','Oamaru',70000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 87),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 87)
),

('392-812 Mus. Ave','Marcq-en-Baroeul',40000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 88),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 88)
),

('345-3202 A Av.','College',10000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 89),
    (SELECT id FROM shopper ORDER BY id  LIMIT 1 OFFSET 89)
),

('CP 718, 9841 Quam, Av.','Mottola',75000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 90),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 90)
),

('CP 787, 1993 Quis Chemin','Barchi',88000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 91),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 91)
),

('837-5481 In Avenue','Harbour Grace',30000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 92),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 92)
),

('Appartement 292-2865 Auctor Route','Qualicum Beach',50000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 93),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 93)
),

('5476 Ligula. Rue','Westlock',20000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 94),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 94)
),

('3537 Ac Chemin','Wondelgem',30000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 95),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 95)
),

('CP 164, 7538 Nec Rd.','Kirkland',10000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 96),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 96)
),

('9772 Eget Av.','Oamaru',70000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 97),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 97)
),

('392-812 Mus. Ave','Marcq-en-Baroeul',40000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 98),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 98)
),

('345-3202 A Av.','College',10000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 99),
    (SELECT id FROM shopper ORDER BY id  LIMIT 1 OFFSET 99)
),

--
-- PIZZERIA 2
--
('CP 718, 9841 Quam, Av.','Mottola',75000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1),
    (SELECT id FROM shopper ORDER BY id LIMIT 1)
),

('CP 787, 1993 Quis Chemin','Barchi',88000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 1),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 1)
),

('837-5481 In Avenue','Harbour Grace',30000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 2),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 2)
),

('Appartement 292-2865 Auctor Route','Qualicum Beach',50000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 3),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 3)
),

('5476 Ligula. Rue','Westlock',20000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 4),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 4)
),

('3537 Ac Chemin','Wondelgem',30000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 5),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 5)
),

('CP 164, 7538 Nec Rd.','Kirkland',10000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 6),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 6)
),

('9772 Eget Av.','Oamaru',70000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 7),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 7)
),

  ('392-812 Mus. Ave','Marcq-en-Baroeul',40000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 8),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 8)
),

  ('345-3202 A Av.','College',10000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 9),
    (SELECT id FROM shopper ORDER BY id  LIMIT 1 OFFSET 9)
),

('CP 718, 9841 Quam, Av.','Mottola',75000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 10),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 10)
),

('CP 787, 1993 Quis Chemin','Barchi',88000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 11),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 11)
),

('837-5481 In Avenue','Harbour Grace',30000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 12),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 12)
),

('Appartement 292-2865 Auctor Route','Qualicum Beach',50000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 13),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 13)
),

('5476 Ligula. Rue','Westlock',20000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 14),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 14)
),

('3537 Ac Chemin','Wondelgem',30000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 15),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 15)
),

('CP 164, 7538 Nec Rd.','Kirkland',10000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 16),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 16)
),

('9772 Eget Av.','Oamaru',70000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 17),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 17)
),

('392-812 Mus. Ave','Marcq-en-Baroeul',40000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 18),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 18)
),

('345-3202 A Av.','College',10000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 19),
    (SELECT id FROM shopper ORDER BY id  LIMIT 1 OFFSET 19)
),

('CP 718, 9841 Quam, Av.','Mottola',75000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 20),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 20)
),

('CP 787, 1993 Quis Chemin','Barchi',88000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 21),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 21)
),

('837-5481 In Avenue','Harbour Grace',30000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 22),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 22)
),

('Appartement 292-2865 Auctor Route','Qualicum Beach',50000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 23),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 23)
),

('5476 Ligula. Rue','Westlock',20000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 24),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 24)
),

('3537 Ac Chemin','Wondelgem',30000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 25),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 25)
),

('CP 164, 7538 Nec Rd.','Kirkland',10000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 26),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 26)
),

('9772 Eget Av.','Oamaru',70000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 27),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 27)
),

('392-812 Mus. Ave','Marcq-en-Baroeul',40000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 28),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 28)
),

('345-3202 A Av.','College',10000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 29),
    (SELECT id FROM shopper ORDER BY id  LIMIT 1 OFFSET 29)
),

('CP 718, 9841 Quam, Av.','Mottola',75000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 30),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 30)
),

('CP 787, 1993 Quis Chemin','Barchi',88000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 31),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 31)
),

('837-5481 In Avenue','Harbour Grace',30000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 32),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 32)
),

('Appartement 292-2865 Auctor Route','Qualicum Beach',50000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 33),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 33)
),

('5476 Ligula. Rue','Westlock',20000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 34),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 34)
),

('3537 Ac Chemin','Wondelgem',30000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 35),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 35)
),

('CP 164, 7538 Nec Rd.','Kirkland',10000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 36),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 36)
),

('9772 Eget Av.','Oamaru',70000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 37),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 37)
),

('392-812 Mus. Ave','Marcq-en-Baroeul',40000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 38),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 38)
),

('345-3202 A Av.','College',10000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 39),
    (SELECT id FROM shopper ORDER BY id  LIMIT 1 OFFSET 39)
),

('CP 718, 9841 Quam, Av.','Mottola',75000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 40),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 40)
),

('CP 787, 1993 Quis Chemin','Barchi',88000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 41),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 41)),

('837-5481 In Avenue','Harbour Grace',30000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 42),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 42)
),

('Appartement 292-2865 Auctor Route','Qualicum Beach',50000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 43),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 43)
),

('5476 Ligula. Rue','Westlock',20000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 44),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 44)
),

('3537 Ac Chemin','Wondelgem',30000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 45),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 45)
),

('CP 164, 7538 Nec Rd.','Kirkland',10000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 46),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 46)),

('9772 Eget Av.','Oamaru',70000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 47),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 47)
),

('392-812 Mus. Ave','Marcq-en-Baroeul',40000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 48),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 48)
),

('345-3202 A Av.','College',10000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 49),
    (SELECT id FROM shopper ORDER BY id  LIMIT 1 OFFSET 49)
),

('CP 718, 9841 Quam, Av.','Mottola',75000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 50),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 50)
),

('CP 787, 1993 Quis Chemin','Barchi',88000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 51),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 51)
),

('837-5481 In Avenue','Harbour Grace',30000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 52),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 52)
),

('Appartement 292-2865 Auctor Route','Qualicum Beach',50000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 53),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 53)
),

('5476 Ligula. Rue','Westlock',20000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 54),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 54)
),

('3537 Ac Chemin','Wondelgem',30000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 55),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 55)
),

('CP 164, 7538 Nec Rd.','Kirkland',10000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 56),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 56)
),

('9772 Eget Av.','Oamaru',70000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 57),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 57)
),

('392-812 Mus. Ave','Marcq-en-Baroeul',40000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 58),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 58)
),

('345-3202 A Av.','College',10000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 59),
    (SELECT id FROM shopper ORDER BY id  LIMIT 1 OFFSET 59)
),

('CP 718, 9841 Quam, Av.','Mottola',75000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 60),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 60)
),

('CP 787, 1993 Quis Chemin','Barchi',88000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 61),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 61)
),

('837-5481 In Avenue','Harbour Grace',30000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 62),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 62)
),

('Appartement 292-2865 Auctor Route','Qualicum Beach',50000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 63),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 63)
),

('5476 Ligula. Rue','Westlock',20000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 64),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 64)
),

('3537 Ac Chemin','Wondelgem',30000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 65),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 65)
),

('CP 164, 7538 Nec Rd.','Kirkland',10000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 66),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 66)
),

('9772 Eget Av.','Oamaru',70000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 67),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 67)
),

('392-812 Mus. Ave','Marcq-en-Baroeul',40000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 68),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 68)
),

('345-3202 A Av.','College',10000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 69),
    (SELECT id FROM shopper ORDER BY id  LIMIT 1 OFFSET 69)
),

('CP 718, 9841 Quam, Av.','Mottola',75000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 70),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 70)
),

('CP 787, 1993 Quis Chemin','Barchi',88000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 71),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 71)
),

('837-5481 In Avenue','Harbour Grace',30000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 72),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 72)
),

('Appartement 292-2865 Auctor Route','Qualicum Beach',50000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 73),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 73)
),

('5476 Ligula. Rue','Westlock',20000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 74),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 74)
),

('3537 Ac Chemin','Wondelgem',30000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 75),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 75)
),

('CP 164, 7538 Nec Rd.','Kirkland',10000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 76),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 76)
),

('9772 Eget Av.','Oamaru',70000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 77),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 77)
),

('392-812 Mus. Ave','Marcq-en-Baroeul',40000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 78),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 78)
),

('345-3202 A Av.','College',10000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 79),
    (SELECT id FROM shopper ORDER BY id  LIMIT 1 OFFSET 79)
),

('CP 718, 9841 Quam, Av.','Mottola',75000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 80),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 80)
),

('CP 787, 1993 Quis Chemin','Barchi',88000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 81),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 81)
),

('837-5481 In Avenue','Harbour Grace',30000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 82),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 82)
),

('Appartement 292-2865 Auctor Route','Qualicum Beach',50000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 83),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 83)
),

('5476 Ligula. Rue','Westlock',20000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 84),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 84)
),

('3537 Ac Chemin','Wondelgem',30000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 85),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 85)
),

('CP 164, 7538 Nec Rd.','Kirkland',10000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 86),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 86)
),

('9772 Eget Av.','Oamaru',70000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 87),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 87)
),

('392-812 Mus. Ave','Marcq-en-Baroeul',40000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 88),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 88)
),

('345-3202 A Av.','College',10000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 89),
    (SELECT id FROM shopper ORDER BY id  LIMIT 1 OFFSET 89)
),

('CP 718, 9841 Quam, Av.','Mottola',75000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 90),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 90)
),

('CP 787, 1993 Quis Chemin','Barchi',88000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 91),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 91)
),

('837-5481 In Avenue','Harbour Grace',30000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 92),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 92)
),

('Appartement 292-2865 Auctor Route','Qualicum Beach',50000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 93),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 93)
),

('5476 Ligula. Rue','Westlock',20000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 94),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 94)
),

('3537 Ac Chemin','Wondelgem',30000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 95),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 95)
),

('CP 164, 7538 Nec Rd.','Kirkland',10000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 96),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 96)
),

('9772 Eget Av.','Oamaru',70000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 97),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 97)
),

('392-812 Mus. Ave','Marcq-en-Baroeul',40000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 98),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 98)
),

('345-3202 A Av.','College',10000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 99),
    (SELECT id FROM shopper ORDER BY id  LIMIT 1 OFFSET 99)
),

--
-- PIZZERIA 3
--
('CP 718, 9841 Quam, Av.','Mottola',75000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2),
    (SELECT id FROM delivery ORDER BY id LIMIT 1),
    (SELECT id FROM shopper ORDER BY id LIMIT 1)
),

('CP 787, 1993 Quis Chemin','Barchi',88000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 1),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 1)
),

('837-5481 In Avenue','Harbour Grace',30000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 2),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 2)
),

('Appartement 292-2865 Auctor Route','Qualicum Beach',50000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 3),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 3)
),

('5476 Ligula. Rue','Westlock',20000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 4),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 4)
),

('3537 Ac Chemin','Wondelgem',30000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 5),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 5)
),

('CP 164, 7538 Nec Rd.','Kirkland',10000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 6),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 6)
),

('9772 Eget Av.','Oamaru',70000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 7),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 7)
),

  ('392-812 Mus. Ave','Marcq-en-Baroeul',40000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 8),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 8)
),

  ('345-3202 A Av.','College',10000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 9),
    (SELECT id FROM shopper ORDER BY id  LIMIT 1 OFFSET 9)
),

('CP 718, 9841 Quam, Av.','Mottola',75000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 10),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 10)
),

('CP 787, 1993 Quis Chemin','Barchi',88000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 11),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 11)
),

('837-5481 In Avenue','Harbour Grace',30000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 12),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 12)
),

('Appartement 292-2865 Auctor Route','Qualicum Beach',50000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 13),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 13)
),

('5476 Ligula. Rue','Westlock',20000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 14),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 14)
),

('3537 Ac Chemin','Wondelgem',30000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 15),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 15)
),

('CP 164, 7538 Nec Rd.','Kirkland',10000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 16),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 16)
),

('9772 Eget Av.','Oamaru',70000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 17),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 17)
),

('392-812 Mus. Ave','Marcq-en-Baroeul',40000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 18),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 18)
),

('345-3202 A Av.','College',10000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 19),
    (SELECT id FROM shopper ORDER BY id  LIMIT 1 OFFSET 19)
),

('CP 718, 9841 Quam, Av.','Mottola',75000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 20),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 20)
),

('CP 787, 1993 Quis Chemin','Barchi',88000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 21),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 21)
),

('837-5481 In Avenue','Harbour Grace',30000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 22),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 22)
),

('Appartement 292-2865 Auctor Route','Qualicum Beach',50000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 23),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 23)
),

('5476 Ligula. Rue','Westlock',20000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 24),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 24)
),

('3537 Ac Chemin','Wondelgem',30000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 25),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 25)
),

('CP 164, 7538 Nec Rd.','Kirkland',10000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 26),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 26)
),

('9772 Eget Av.','Oamaru',70000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 27),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 27)
),

('392-812 Mus. Ave','Marcq-en-Baroeul',40000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 28),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 28)
),

('345-3202 A Av.','College',10000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 29),
    (SELECT id FROM shopper ORDER BY id  LIMIT 1 OFFSET 29)
),

('CP 718, 9841 Quam, Av.','Mottola',75000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 30),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 30)
),

('CP 787, 1993 Quis Chemin','Barchi',88000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 31),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 31)
),

('837-5481 In Avenue','Harbour Grace',30000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 32),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 32)
),

('Appartement 292-2865 Auctor Route','Qualicum Beach',50000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 33),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 33)
),

('5476 Ligula. Rue','Westlock',20000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 34),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 34)
),

('3537 Ac Chemin','Wondelgem',30000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 35),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 35)
),

('CP 164, 7538 Nec Rd.','Kirkland',10000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 36),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 36)
),

('9772 Eget Av.','Oamaru',70000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 37),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 37)
),

('392-812 Mus. Ave','Marcq-en-Baroeul',40000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 38),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 38)
),

('345-3202 A Av.','College',10000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 39),
    (SELECT id FROM shopper ORDER BY id  LIMIT 1 OFFSET 39)
),

('CP 718, 9841 Quam, Av.','Mottola',75000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 40),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 40)
),

('CP 787, 1993 Quis Chemin','Barchi',88000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 41),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 41)),

('837-5481 In Avenue','Harbour Grace',30000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 42),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 42)
),

('Appartement 292-2865 Auctor Route','Qualicum Beach',50000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 43),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 43)
),

('5476 Ligula. Rue','Westlock',20000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 44),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 44)
),

('3537 Ac Chemin','Wondelgem',30000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 45),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 45)
),

('CP 164, 7538 Nec Rd.','Kirkland',10000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 46),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 46)),

('9772 Eget Av.','Oamaru',70000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 47),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 47)
),

('392-812 Mus. Ave','Marcq-en-Baroeul',40000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 48),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 48)
),

('345-3202 A Av.','College',10000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 49),
    (SELECT id FROM shopper ORDER BY id  LIMIT 1 OFFSET 49)
),

('CP 718, 9841 Quam, Av.','Mottola',75000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 50),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 50)
),

('CP 787, 1993 Quis Chemin','Barchi',88000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 51),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 51)
),

('837-5481 In Avenue','Harbour Grace',30000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 52),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 52)
),

('Appartement 292-2865 Auctor Route','Qualicum Beach',50000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 53),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 53)
),

('5476 Ligula. Rue','Westlock',20000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 54),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 54)
),

('3537 Ac Chemin','Wondelgem',30000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 55),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 55)
),

('CP 164, 7538 Nec Rd.','Kirkland',10000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 56),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 56)
),

('9772 Eget Av.','Oamaru',70000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 57),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 57)
),

('392-812 Mus. Ave','Marcq-en-Baroeul',40000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 58),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 58)
),

('345-3202 A Av.','College',10000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 59),
    (SELECT id FROM shopper ORDER BY id  LIMIT 1 OFFSET 59)
),

('CP 718, 9841 Quam, Av.','Mottola',75000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 60),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 60)
),

('CP 787, 1993 Quis Chemin','Barchi',88000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 61),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 61)
),

('837-5481 In Avenue','Harbour Grace',30000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 62),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 62)
),

('Appartement 292-2865 Auctor Route','Qualicum Beach',50000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 63),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 63)
),

('5476 Ligula. Rue','Westlock',20000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 64),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 64)
),

('3537 Ac Chemin','Wondelgem',30000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 65),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 65)
),

('CP 164, 7538 Nec Rd.','Kirkland',10000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 66),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 66)
),

('9772 Eget Av.','Oamaru',70000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 67),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 67)
),

('392-812 Mus. Ave','Marcq-en-Baroeul',40000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 68),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 68)
),

('345-3202 A Av.','College',10000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 69),
    (SELECT id FROM shopper ORDER BY id  LIMIT 1 OFFSET 69)
),

('CP 718, 9841 Quam, Av.','Mottola',75000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 70),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 70)
),

('CP 787, 1993 Quis Chemin','Barchi',88000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 71),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 71)
),

('837-5481 In Avenue','Harbour Grace',30000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 72),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 72)
),

('Appartement 292-2865 Auctor Route','Qualicum Beach',50000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 73),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 73)
),

('5476 Ligula. Rue','Westlock',20000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 74),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 74)
),

('3537 Ac Chemin','Wondelgem',30000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 75),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 75)
),

('CP 164, 7538 Nec Rd.','Kirkland',10000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 76),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 76)
),

('9772 Eget Av.','Oamaru',70000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 77),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 77)
),

('392-812 Mus. Ave','Marcq-en-Baroeul',40000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 78),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 78)
),

('345-3202 A Av.','College',10000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 79),
    (SELECT id FROM shopper ORDER BY id  LIMIT 1 OFFSET 79)
),

('CP 718, 9841 Quam, Av.','Mottola',75000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 80),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 80)
),

('CP 787, 1993 Quis Chemin','Barchi',88000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 81),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 81)
),

('837-5481 In Avenue','Harbour Grace',30000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 82),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 82)
),

('Appartement 292-2865 Auctor Route','Qualicum Beach',50000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 83),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 83)
),

('5476 Ligula. Rue','Westlock',20000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 84),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 84)
),

('3537 Ac Chemin','Wondelgem',30000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 85),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 85)
),

('CP 164, 7538 Nec Rd.','Kirkland',10000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 86),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 86)
),

('9772 Eget Av.','Oamaru',70000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 87),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 87)
),

('392-812 Mus. Ave','Marcq-en-Baroeul',40000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 88),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 88)
),

('345-3202 A Av.','College',10000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 89),
    (SELECT id FROM shopper ORDER BY id  LIMIT 1 OFFSET 89)
),

('CP 718, 9841 Quam, Av.','Mottola',75000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 90),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 90)
),

('CP 787, 1993 Quis Chemin','Barchi',88000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 91),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 91)
),

('837-5481 In Avenue','Harbour Grace',30000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 92),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 92)
),

('Appartement 292-2865 Auctor Route','Qualicum Beach',50000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 93),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 93)
),

('5476 Ligula. Rue','Westlock',20000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 94),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 94)
),

('3537 Ac Chemin','Wondelgem',30000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 95),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 95)
),

('CP 164, 7538 Nec Rd.','Kirkland',10000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 96),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 96)
),

('9772 Eget Av.','Oamaru',70000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 97),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 97)
),

('392-812 Mus. Ave','Marcq-en-Baroeul',40000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 98),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 98)
),

('345-3202 A Av.','College',10000,
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2),
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 99),
    (SELECT id FROM shopper ORDER BY id  LIMIT 1 OFFSET 99)
);


--
-- INSERTION PAYMENT
--

INSERT INTO payment (amount,id_delivery,id_payment_method,id_shopper)
    VALUES
(10,(SELECT id FROM delivery ORDER BY id LIMIT 1),
    (SELECT id FROM payment_method ORDER BY id LIMIT 1),
    (SELECT id FROM shopper ORDER BY id LIMIT 1)
),

(15,(SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 1),
    (SELECT id FROM payment_method ORDER BY id LIMIT 1),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 1)
),

(16,(SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 2),
    (SELECT id FROM payment_method ORDER BY id LIMIT 1),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 2)
),

(11,(SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 3),
    (SELECT id FROM payment_method ORDER BY id LIMIT 1),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 3)
),

(20,(SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 4),
    (SELECT id FROM payment_method ORDER BY id LIMIT 1),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 4)
),

(13,(SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 5),
    (SELECT id FROM payment_method ORDER BY id LIMIT 1),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 5)
),

(16,(SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 6),
    (SELECT id FROM payment_method ORDER BY id LIMIT 1 OFFSET 1),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 6)
),

(13,(SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 7),
    (SELECT id FROM payment_method ORDER BY id LIMIT 1 OFFSET 1),
    (SELECT id FROM shopper ORDER BY id  LIMIT 1 OFFSET 7)
),

(19,(SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 8),
    (SELECT id FROM payment_method ORDER BY id LIMIT 1 OFFSET 1),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 8)
),

(15,(SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 9),
    (SELECT id FROM payment_method ORDER BY id LIMIT 1 OFFSET 1),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 9)
),

(14,(SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 10),
    (SELECT id FROM payment_method ORDER BY id LIMIT 1 OFFSET 2),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 10)
),

(18,(SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 11),
    (SELECT id FROM payment_method ORDER BY id LIMIT 1 OFFSET 2),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 11)
),

(14,(SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 12),
    (SELECT id FROM payment_method ORDER BY id LIMIT 1 OFFSET 1),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 12)
),

(18,(SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 13),
    (SELECT id FROM payment_method ORDER BY id LIMIT 1 OFFSET 1),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 13)
),

(13,(SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 14),
    (SELECT id FROM payment_method ORDER BY id LIMIT 1 OFFSET 1),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 14)
),

(13,(SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 15),
    (SELECT id FROM payment_method ORDER BY id LIMIT 1 OFFSET 1),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 15)
),

(16,(SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 16),
    (SELECT id FROM payment_method ORDER BY id LIMIT 1 OFFSET 3),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 16)
),

(17,(SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 17),
    (SELECT id FROM payment_method ORDER BY id LIMIT 1 OFFSET 2),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 17)
),

(20,(SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 18),
    (SELECT id FROM payment_method ORDER BY id LIMIT 1 OFFSET 2),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 18)
),

(13,(SELECT id FROM delivery ORDER BY id  LIMIT 1 OFFSET 19),
    (SELECT id FROM payment_method ORDER BY id LIMIT 1 OFFSET 2),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 19)
),

(15,(SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 20),
    (SELECT id FROM payment_method ORDER BY id LIMIT 1 OFFSET 3),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 20)
),

(14,(SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 21),
    (SELECT id FROM payment_method ORDER BY id LIMIT 1 OFFSET 3),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 21)
),

(13,(SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 22),
    (SELECT id FROM payment_method ORDER BY id LIMIT 1 OFFSET 3),
     (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 22)
),

(11,(SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 23),
    (SELECT id FROM payment_method ORDER BY id LIMIT 1 OFFSET 3),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 23)
),

(15,(SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 24),
    (SELECT id FROM payment_method ORDER BY id LIMIT 1 OFFSET 3),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 24)
),

(14,(SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 25),
    (SELECT id FROM payment_method ORDER BY id LIMIT 1 OFFSET 3),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 25)
),

(10,(SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 26),
    (SELECT id FROM payment_method ORDER BY id LIMIT 1 OFFSET 3),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 26)
),

(16,(SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 27),
    (SELECT id FROM payment_method ORDER BY id LIMIT 1 OFFSET 4),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 27)
),

(16,(SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 28),
    (SELECT id FROM payment_method ORDER BY id LIMIT 1 OFFSET 4),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 28)
),

(12,(SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 29),
    (SELECT id FROM payment_method ORDER BY id LIMIT 1 OFFSET 2),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 29)
),

(14,(SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 30),
    (SELECT id FROM payment_method ORDER BY id LIMIT 1 OFFSET 2),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 30)
),

(13,(SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 31),
    (SELECT id FROM payment_method ORDER BY id LIMIT 1 OFFSET 2),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 31)
),

(18,(SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 32),
    (SELECT id FROM payment_method ORDER BY id LIMIT 1),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 32)
),

(15,(SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 33),
    (SELECT id FROM payment_method ORDER BY id LIMIT 1 OFFSET 1),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 33)
),

(12,(SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 34),
    (SELECT id FROM payment_method ORDER BY id LIMIT 1 OFFSET 4),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 34)
),

(16,(SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 35),
    (SELECT id FROM payment_method ORDER BY id LIMIT 1 OFFSET 2),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 35)
),

(15,(SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 36),
    (SELECT id FROM payment_method ORDER BY id LIMIT 1),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 36)
),

(17,(SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 37),
    (SELECT id FROM payment_method ORDER BY id LIMIT 1 OFFSET 3),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 37)
),

(16,(SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 38),
    (SELECT id FROM payment_method ORDER BY id LIMIT 1 OFFSET 2),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 38)
),

(16,(SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 39),
    (SELECT id FROM payment_method ORDER BY id LIMIT 1),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 39)
),

(13,(SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 40),
    (SELECT id FROM payment_method ORDER BY id LIMIT 1 OFFSET 4),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 40)
),

(18,(SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 41),
    (SELECT id FROM payment_method ORDER BY id LIMIT 1 OFFSET 2),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 41)
),

(17,(SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 42),
    (SELECT id FROM payment_method ORDER BY id LIMIT 1),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 42)
),

(21,(SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 43),
    (SELECT id FROM payment_method ORDER BY id LIMIT 1 OFFSET 2),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 43)
),

(13,(SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 44),
    (SELECT id FROM payment_method ORDER BY id LIMIT 1 OFFSET 3),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 44)
),

(17,(SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 45),
    (SELECT id FROM payment_method ORDER BY id LIMIT 1 OFFSET 1),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 45)
),

(13,(SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 46),
    (SELECT id FROM payment_method ORDER BY id LIMIT 1 OFFSET 2),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 46)
),

(14,(SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 47),
    (SELECT id FROM payment_method ORDER BY id LIMIT 1 OFFSET 2),
    (SELECT id FROM shopper ORDER BY id  LIMIT 1 OFFSET 47)
),

(15,(SELECT id FROM delivery ORDER BY id  LIMIT 1 OFFSET 48),
    (SELECT id FROM payment_method ORDER BY id LIMIT 1 OFFSET 2),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 48)
),

(13,(SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 49),
    (SELECT id FROM payment_method ORDER BY id LIMIT 1 OFFSET 3),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 49)
),

(19,(SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 50),
    (SELECT id FROM payment_method ORDER BY id LIMIT 1),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 50)
),

(19,(SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 51),
    (SELECT id FROM payment_method ORDER BY id LIMIT 1),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 51)
),

(15,(SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 52),
    (SELECT id FROM payment_method ORDER BY id LIMIT 1),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 52)
),

(17,(SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 53),
    (SELECT id FROM payment_method ORDER BY id LIMIT 1 OFFSET 1),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 53)
),

(17,(SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 54),
    (SELECT id FROM payment_method ORDER BY id LIMIT 1 OFFSET 1),
    (SELECT id FROM shopper  ORDER BY id LIMIT 1 OFFSET 54)
),

(15,(SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 55),
    (SELECT id FROM payment_method ORDER BY id LIMIT 1 OFFSET 1),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 55)
),

(19,(SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 56),
    (SELECT id FROM payment_method ORDER BY id LIMIT 1 OFFSET 1),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 56)
),

(15,(SELECT id FROM delivery ORDER BY id  LIMIT 1 OFFSET 57),
    (SELECT id FROM payment_method ORDER BY id LIMIT 1 OFFSET 2),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 57)
),

(15,(SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 58),
    (SELECT id FROM payment_method ORDER BY id LIMIT 1 OFFSET 3),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 58)
),

(14,(SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 59),
    (SELECT id FROM payment_method ORDER BY id LIMIT 1 OFFSET 3),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 59)
),

(15,(SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 60),
    (SELECT id FROM payment_method ORDER BY id LIMIT 1 OFFSET 3),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 60)
),

(17,(SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 61),
    (SELECT id FROM payment_method ORDER BY id LIMIT 1 OFFSET 2),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 61)
),

(13,(SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 62),
    (SELECT id FROM payment_method ORDER BY id LIMIT 1 OFFSET 4),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 62)
),

(15,(SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 63),
    (SELECT id FROM payment_method ORDER BY id LIMIT 1 OFFSET 4),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 63)
),

(17,(SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 64),
    (SELECT id FROM payment_method ORDER BY id LIMIT 1 OFFSET 4),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 64)
),

(16,(SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 65),
    (SELECT id FROM payment_method ORDER BY id LIMIT 1 OFFSET 4),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 65)
),

(16,(SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 66),
    (SELECT id FROM payment_method ORDER BY id LIMIT 1 OFFSET 4),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 66)
),

(16,(SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 67),
    (SELECT id FROM payment_method ORDER BY id LIMIT 1 OFFSET 4),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 67)
),

(17,(SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 68),
    (SELECT id FROM payment_method ORDER BY id LIMIT 1 OFFSET 4),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 68)
),

(14,(SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 69),
    (SELECT id FROM payment_method ORDER BY id LIMIT 1 OFFSET 4),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 69)
),

(16,(SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 70),
    (SELECT id FROM payment_method ORDER BY id LIMIT 1 OFFSET 4),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 70)
),

(16,(SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 71),
    (SELECT id FROM payment_method ORDER BY id LIMIT 1 OFFSET 2),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 71)
),

(15,(SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 72),
    (SELECT id FROM payment_method ORDER BY id LIMIT 1 OFFSET 4),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 72)
),

(8,(SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 73),
    (SELECT id FROM payment_method ORDER BY id LIMIT 1 OFFSET 4),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 73)
),

(15,(SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 74),
    (SELECT id FROM payment_method ORDER BY id LIMIT 1 OFFSET 3),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 74)
),

(13,(SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 75),
    (SELECT id FROM payment_method ORDER BY id LIMIT 1 OFFSET 3),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 75)
),

(16,(SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 76),
    (SELECT id FROM payment_method ORDER BY id LIMIT 1 OFFSET 3),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 76)
),

(18,(SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 77),
    (SELECT id FROM payment_method ORDER BY id LIMIT 1),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 77)
),

(15,(SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 78),
    (SELECT id FROM payment_method ORDER BY id LIMIT 1),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 78)
),

(13,(SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 79),
    (SELECT id FROM payment_method ORDER BY id LIMIT 1 OFFSET 3),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 79)
),

(11,(SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 80),
    (SELECT id FROM payment_method ORDER BY id LIMIT 1 OFFSET 2),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 80)
),

(13,(SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 81),
    (SELECT id FROM payment_method ORDER BY id LIMIT 1 OFFSET 2),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 81)
),

(16,(SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 82),
    (SELECT id FROM payment_method ORDER BY id LIMIT 1 OFFSET 1),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 82)
),

(13,(SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 83),
    (SELECT id FROM payment_method ORDER BY id LIMIT 1 OFFSET 1),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 83)
),

(17,(SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 84),
    (SELECT id FROM payment_method ORDER BY id LIMIT 1 OFFSET 1),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 84)
),

(15,(SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 85),
    (SELECT id FROM payment_method ORDER BY id LIMIT 1),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 85)
),

(12,(SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 86),
    (SELECT id FROM payment_method ORDER BY id LIMIT 1 OFFSET 1),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 86)
),

(15,(SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 87),
    (SELECT id FROM payment_method ORDER BY id LIMIT 1 OFFSET 1),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 87)
),

(16,(SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 88),
    (SELECT id FROM payment_method ORDER BY id LIMIT 1 OFFSET 1),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 88)
),

(17,(SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 89),
    (SELECT id FROM payment_method ORDER BY id LIMIT 1 OFFSET 1),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 89)
),

(15,(SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 90),
    (SELECT id FROM payment_method ORDER BY id LIMIT 1),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 90)
),

(17,(SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 91),
    (SELECT id FROM payment_method ORDER BY id LIMIT 1),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 91)
),

(16,(SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 92),
    (SELECT id FROM payment_method ORDER BY id LIMIT 1),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 92)
),

(16,(SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 93),
    (SELECT id FROM payment_method ORDER BY id LIMIT 1 OFFSET 3),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 93)
),

(11,(SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 94),
    (SELECT id FROM payment_method ORDER BY id LIMIT 1 OFFSET 3),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 94)
),

(10,(SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 95),
    (SELECT id FROM payment_method ORDER BY id LIMIT 1 OFFSET 3),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 95)
),

(12,(SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 96),
    (SELECT id FROM payment_method ORDER BY id LIMIT 1 OFFSET 3),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 96)
),

(17,(SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 97),
    (SELECT id FROM payment_method ORDER BY id LIMIT 1 OFFSET 3),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 97)
),

(8,(SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 98),
    (SELECT id FROM payment_method ORDER BY id LIMIT 1 OFFSET 3),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 98)
),

(13,(SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 99),
    (SELECT id FROM payment_method ORDER BY id LIMIT 1 OFFSET 1),
    (SELECT id FROM shopper ORDER BY id LIMIT 1 OFFSET 99)
);

--
-- pizza_order
--

INSERT INTO pizza_order (date,id_delivery,id_payment,id_status,id_pizzeria)
    VALUES

('16/08/2018',
    (SELECT id FROM delivery ORDER BY id LIMIT 1),
    (SELECT id FROM payment ORDER BY id LIMIT 1),
    (SELECT id FROM status ORDER BY id LIMIT 1),
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1)
),

('11/02/2018',
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 1),
    (SELECT id FROM payment ORDER BY id LIMIT 1 OFFSET 1),
    (SELECT id FROM status ORDER BY id  LIMIT 1 OFFSET 1),
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1)
),

('18/03/2018',
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 2),
    (SELECT id FROM payment ORDER BY id LIMIT 1 OFFSET 2),
    (SELECT id FROM status ORDER BY id LIMIT 1 OFFSET 3),
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1)
),

('14/12/2018',
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 3),
    (SELECT id FROM payment ORDER BY id LIMIT 1 OFFSET 3),
    (SELECT id FROM status ORDER BY id LIMIT 1 OFFSET 1),
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1)
),

('18/07/2018',
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 4),
    (SELECT id FROM payment ORDER BY id LIMIT 1 OFFSET 4),
    (SELECT id FROM status ORDER BY id LIMIT 1 OFFSET 4),
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1)
),

('26/02/2018',
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 5),
    (SELECT id FROM payment ORDER BY id LIMIT 1 OFFSET 5),
    (SELECT id FROM status ORDER BY id LIMIT 1 OFFSET 3),
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1)
),

('17/07/2018',
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 6),
    (SELECT id FROM payment ORDER BY id LIMIT 1 OFFSET 6),
    (SELECT id FROM status ORDER BY id LIMIT 1 OFFSET 3),
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1)
),

('18/03/2018',
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 7),
    (SELECT id FROM payment ORDER BY id LIMIT 1 OFFSET 7),
    (SELECT id FROM status ORDER BY id LIMIT 1 OFFSET 1),
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1)
),

('03/04/2018',
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 8),
    (SELECT id FROM payment ORDER BY id LIMIT 1 OFFSET 8),
    (SELECT id FROM status ORDER BY id LIMIT 1 OFFSET 2),
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1)
),

('05/12/2018',
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 9),
    (SELECT id FROM payment ORDER BY id LIMIT 1 OFFSET 9),
    (SELECT id FROM status  ORDER BY id LIMIT 1 OFFSET 3),
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1)
),

('11/06/2018',
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 10),
    (SELECT id FROM payment ORDER BY id LIMIT 1 OFFSET 10),
    (SELECT id FROM status ORDER BY id LIMIT 1 OFFSET 1),
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1)
),

('05/11/2018',
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 11),
    (SELECT id FROM payment ORDER BY id LIMIT 1 OFFSET 11),
    (SELECT id FROM status ORDER BY id LIMIT 1 OFFSET 4),
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1)
),

('15/11/2018',
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 12),
    (SELECT id FROM payment ORDER BY id LIMIT 1 OFFSET 12),
    (SELECT id FROM status ORDER BY id LIMIT 1 OFFSET 2),
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1)
),

('10/09/2018',
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 13),
    (SELECT id FROM payment ORDER BY id LIMIT 1 OFFSET 13),
    (SELECT id FROM status ORDER BY id LIMIT 1 OFFSET 1),
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1)
),

('21/11/2018',
    (SELECT id FROM delivery ORDER BY id  LIMIT 1 OFFSET 14),
    (SELECT id FROM payment ORDER BY id LIMIT 1 OFFSET 14),
    (SELECT id FROM status ORDER BY id LIMIT 1 OFFSET 4),
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1)
),

('12/12/2018',
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 15),
    (SELECT id FROM payment ORDER BY id LIMIT 1 OFFSET 15),
    (SELECT id FROM status ORDER BY id LIMIT 1 OFFSET 2),
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1)
),

('08/10/2018',
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 16),
    (SELECT id FROM payment ORDER BY id  LIMIT 1 OFFSET 16),
    (SELECT id FROM status ORDER BY id   LIMIT 1 OFFSET 2),
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1)
),

('13/05/2018',
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 17),
    (SELECT id FROM payment ORDER BY id LIMIT 1 OFFSET 17),
    (SELECT id FROM status ORDER BY id LIMIT 1),
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1)
),

('16/05/2018',
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 18),
    (SELECT id FROM payment ORDER BY id LIMIT 1 OFFSET 18),
    (SELECT id FROM status ORDER BY id LIMIT 1 OFFSET 4),
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1)
),

('07/12/2018',
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 19),
    (SELECT id FROM payment ORDER BY id LIMIT 1 OFFSET 19),
    (SELECT id FROM status ORDER BY id  LIMIT 1 OFFSET 1),
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1)
),

('01/04/2018',
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 20),
    (SELECT id FROM payment ORDER BY id LIMIT 1 OFFSET 20),
    (SELECT id FROM status ORDER BY id LIMIT 1 OFFSET 3),
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1)
),

('10/07/2018',
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 21),
    (SELECT id FROM payment ORDER BY id LIMIT 1 OFFSET 21),
    (SELECT id FROM status ORDER BY id LIMIT 1 OFFSET 2),
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1)
),

('20/03/2018',
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 22),
    (SELECT id FROM payment ORDER BY id LIMIT 1 OFFSET 22),
    (SELECT id FROM status  ORDER BY id LIMIT 1 OFFSET 1),
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1)
),

('12/11/2018',
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 23),
    (SELECT id FROM payment ORDER BY id LIMIT 1 OFFSET 23),
    (SELECT id FROM status ORDER BY id LIMIT 1 OFFSET 4),
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1)
),

('13/11/2018',
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 24),
    (SELECT id FROM payment ORDER BY id LIMIT 1 OFFSET 24),
    (SELECT id FROM status ORDER BY id LIMIT 1 OFFSET 1),
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1)
),

('16/04/2018',
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 25),
    (SELECT id FROM payment ORDER BY id LIMIT 1 OFFSET 25),
    (SELECT id FROM status ORDER BY id  LIMIT 1),
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1)
),

('23/06/2018',
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 26),
    (SELECT id FROM payment ORDER BY id LIMIT 1 OFFSET 26),
    (SELECT id FROM status ORDER BY id LIMIT 1 OFFSET 1),
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1)
),

('02/01/2018',
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 27),
    (SELECT id FROM payment ORDER BY id LIMIT 1 OFFSET 27),
    (SELECT id FROM status  ORDER BY id LIMIT 1 OFFSET 3),
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1)
),

('26/09/2018',
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 28),
    (SELECT id FROM payment ORDER BY id LIMIT 1 OFFSET 28),
    (SELECT id FROM status ORDER BY id LIMIT 1 OFFSET 2),
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1)
),

('10/08/2018',
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 29),
    (SELECT id FROM payment ORDER BY id LIMIT 1 OFFSET 29),
    (SELECT id FROM status ORDER BY id LIMIT 1 OFFSET 3),
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1)
),

('28/08/2018',
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 30),
    (SELECT id FROM payment ORDER BY id LIMIT 1 OFFSET 30),
    (SELECT id FROM status ORDER BY id  LIMIT 1 OFFSET 2),
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1)
),

('23/07/2018',
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 31),
    (SELECT id FROM payment ORDER BY id LIMIT 1  OFFSET 31),
    (SELECT id FROM status ORDER BY id LIMIT 1),
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1)
),

('09/01/2018',
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 32),
    (SELECT id FROM payment ORDER BY id LIMIT 1 OFFSET 32),
    (SELECT id FROM status ORDER BY id LIMIT 1 OFFSET 4),
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1)
),

('09/12/2018',
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 33),
    (SELECT id FROM payment ORDER BY id LIMIT 1 OFFSET 33),
    (SELECT id FROM status ORDER BY id LIMIT 1 OFFSET 1),
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1)
),

('05/04/2018',
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 34),
    (SELECT id FROM payment ORDER BY id LIMIT 1 OFFSET 34),
    (SELECT id FROM status ORDER BY id LIMIT 1 OFFSET 3),
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1)
),

('06/01/2018',
    (SELECT id FROM delivery  ORDER BY id  LIMIT 1 OFFSET 35),
    (SELECT id FROM payment ORDER BY id LIMIT 1 OFFSET 35),
    (SELECT id FROM status ORDER BY id LIMIT 1 OFFSET 2),
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1)
),

('29/09/2018',
    (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 36),
    (SELECT id FROM payment ORDER BY id LIMIT 1 OFFSET 36),
    (SELECT id FROM status ORDER BY id LIMIT 1 OFFSET 1),
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1)
),

('25/11/2018',
  (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 37),
  (SELECT id FROM payment ORDER BY id LIMIT 1 OFFSET 37),
  (SELECT id FROM status ORDER BY id LIMIT 1 OFFSET 2),
  (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1)
),

('10/06/2018',
  (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 38),
  (SELECT id FROM payment ORDER BY id LIMIT 1 OFFSET 38),
  (SELECT id FROM status ORDER BY id LIMIT 1 OFFSET 1),
  (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1)
),

('19/11/2018',
  (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 39),
  (SELECT id FROM payment ORDER BY id LIMIT 1 OFFSET 39),
  (SELECT id FROM status ORDER BY id LIMIT 1 OFFSET 1),
  (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1)
),

('16/07/2018',
  (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 40),
  (SELECT id FROM payment ORDER BY id LIMIT 1 OFFSET 40),
  (SELECT id FROM status ORDER BY id LIMIT 1 OFFSET 4),
  (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1)
),

('12/10/2018',
  (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 41),
  (SELECT id FROM payment ORDER BY id LIMIT 1 OFFSET 41),
  (SELECT id FROM status ORDER BY id LIMIT 1 OFFSET 4),
  (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1)
),

('25/09/2018',
  (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 42),
  (SELECT id FROM payment ORDER BY id LIMIT 1 OFFSET 42),
  (SELECT id FROM status ORDER BY id LIMIT 1 OFFSET 3),
  (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1)
),

('21/02/2018',
  (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 43),
  (SELECT id FROM payment ORDER BY id LIMIT 1 OFFSET 43),
  (SELECT id FROM status ORDER BY id LIMIT 1 OFFSET 2),
  (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1)
),

('19/02/2018',
  (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 44),
  (SELECT id FROM payment ORDER BY id LIMIT 1 OFFSET 44),
  (SELECT id FROM status ORDER BY id LIMIT 1 OFFSET 1),
  (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1)
),

('07/10/2018',
  (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 45),
  (SELECT id FROM payment ORDER BY id LIMIT 1 OFFSET 45),
  (SELECT id FROM status ORDER BY id LIMIT 1 OFFSET 1),
  (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1)
),

('04/07/2018',
  (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 46),
  (SELECT id FROM payment ORDER BY id LIMIT 1 OFFSET 46),
  (SELECT id FROM status ORDER BY id LIMIT 1 OFFSET 2),
  (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1)
),

('01/11/2018',
  (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 47),
  (SELECT id FROM payment ORDER BY id LIMIT 1 OFFSET 47),
  (SELECT id FROM status ORDER BY id LIMIT 1 OFFSET 1),
  (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1)
),

('28/02/2018',
  (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 48),
  (SELECT id FROM payment ORDER BY id LIMIT 1 OFFSET 48),
  (SELECT id FROM status ORDER BY id LIMIT 1 OFFSET 3),
  (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1)
),

('11/12/2018',
  (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 49),
  (SELECT id FROM payment ORDER BY id LIMIT 1 OFFSET 49),
  (SELECT id FROM status ORDER BY id LIMIT 1 OFFSET 4),
  (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1)
),

('21/05/2018',
  (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 50),
  (SELECT id FROM payment ORDER BY id LIMIT 1 OFFSET 50),
  (SELECT id FROM status ORDER BY id LIMIT 1 OFFSET 1),
  (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1)
),

('16/11/2018',
  (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 51),
  (SELECT id FROM payment ORDER BY id LIMIT 1 OFFSET 51),
  (SELECT id FROM status ORDER BY id LIMIT 1 OFFSET 4),
  (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1)
),

('18/01/2018',
  (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 52),
  (SELECT id FROM payment ORDER BY id LIMIT 1 OFFSET 52),
  (SELECT id FROM status ORDER BY id LIMIT 1 OFFSET 3),
  (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1)
),

('14/04/2018',
  (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 53),
  (SELECT id FROM payment ORDER BY id LIMIT 1 OFFSET 53),
  (SELECT id FROM status ORDER BY id LIMIT 1 OFFSET 4),
  (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1)
),

('23/11/2018',
  (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 54),
  (SELECT id FROM payment ORDER BY id LIMIT 1 OFFSET 54),
  (SELECT id FROM status ORDER BY id LIMIT 1 OFFSET 2),
  (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1)
),

('18/06/2018',
  (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 55),
  (SELECT id FROM payment ORDER BY id LIMIT 1 OFFSET 55),
  (SELECT id FROM status ORDER BY id LIMIT 1 OFFSET 1),
  (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1)
),

('25/01/2018',
  (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 56),
  (SELECT id FROM payment ORDER BY id LIMIT 1 OFFSET 56),
  (SELECT id FROM status ORDER BY id LIMIT 1 OFFSET 1),
  (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1)
),

('07/11/2018',
  (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 57),
  (SELECT id FROM payment ORDER BY id LIMIT 1 OFFSET 57),
  (SELECT id FROM status ORDER BY id LIMIT 1 OFFSET 3),
  (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1)
),

('30/11/2018',
  (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 58),
  (SELECT id FROM payment ORDER BY id LIMIT 1 OFFSET 58),
  (SELECT id FROM status ORDER BY id LIMIT 1 OFFSET 4),
  (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1)
),

('23/12/2018',
  (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 59),
  (SELECT id FROM payment ORDER BY id LIMIT 1 OFFSET 59),
  (SELECT id FROM status ORDER BY id LIMIT 1 OFFSET 4),
  (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1)
),

('08/12/2018',
  (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 60),
  (SELECT id FROM payment ORDER BY id LIMIT 1 OFFSET 60),
  (SELECT id FROM status ORDER BY id LIMIT 1 OFFSET 1),
  (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1)
),

('05/04/2018',
  (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 61),
  (SELECT id FROM payment ORDER BY id LIMIT 1 OFFSET 61),
  (SELECT id FROM status ORDER BY id LIMIT 1 OFFSET 2),
  (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1)
),

('01/08/2018',
  (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 62),
  (SELECT id FROM payment ORDER BY id LIMIT 1 OFFSET 62),
  (SELECT id FROM status ORDER BY id LIMIT 1 OFFSET 1),
  (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1)
),

('14/09/2018',
  (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 63),
  (SELECT id FROM payment ORDER BY id LIMIT 1 OFFSET 63),
  (SELECT id FROM status ORDER BY id LIMIT 1 OFFSET 3),
  (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1)
),

('04/08/2018',
  (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 64),
  (SELECT id FROM payment ORDER BY id LIMIT 1 OFFSET 64),
  (SELECT id FROM status ORDER BY id LIMIT 1 OFFSET 2),
  (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1)
),

('01/05/2018',
  (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 65),
  (SELECT id FROM payment ORDER BY id LIMIT 1 OFFSET 65),
  (SELECT id FROM status ORDER BY id LIMIT 1 OFFSET 3),
  (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1)
),

('30/06/2018',
  (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 66),
  (SELECT id FROM payment ORDER BY id LIMIT 1 OFFSET 66),
  (SELECT id FROM status ORDER BY id LIMIT 1 OFFSET 2),
  (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1)
),

('18/01/2018',
  (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 67),
  (SELECT id FROM payment ORDER BY id LIMIT 1 OFFSET 67),
  (SELECT id FROM status ORDER BY id LIMIT 1 OFFSET 2),
  (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 1)
),

('17/06/2018',
  (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 68),
  (SELECT id FROM payment ORDER BY id LIMIT 1 OFFSET 68),
  (SELECT id FROM status ORDER BY id LIMIT 1 OFFSET 4),
  (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2)
),

('14/03/2018',
  (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 69),
  (SELECT id FROM payment ORDER BY id LIMIT 1 OFFSET 69),
  (SELECT id FROM status ORDER BY id LIMIT 1 OFFSET 4),
  (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2)
),
('05/02/2018',
  (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 70),
  (SELECT id FROM payment ORDER BY id LIMIT 1 OFFSET 70),
  (SELECT id FROM status ORDER BY id LIMIT 1 OFFSET 3),
  (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2)
),

('22/11/2018',
  (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 71),
  (SELECT id FROM payment ORDER BY id LIMIT 1 OFFSET 71),
  (SELECT id FROM status ORDER BY id LIMIT 1 OFFSET 4),
  (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2)
),

('09/07/2018',
  (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 72),
  (SELECT id FROM payment ORDER BY id LIMIT 1 OFFSET 72),
  (SELECT id FROM status ORDER BY id LIMIT 1 OFFSET 2),
  (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2)
),

('01/03/2018',
  (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 73),
  (SELECT id FROM payment ORDER BY id LIMIT 1 OFFSET 73),
  (SELECT id FROM status ORDER BY id LIMIT 1 OFFSET 3),
  (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2)
),

('22/11/2018',
  (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 74),
  (SELECT id FROM payment ORDER BY id LIMIT 1 OFFSET 74),
  (SELECT id FROM status ORDER BY id LIMIT 1 OFFSET 4),
  (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2)
),

('04/03/2018',
  (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 75),
  (SELECT id FROM payment ORDER BY id LIMIT 1 OFFSET 75),
  (SELECT id FROM status ORDER BY id LIMIT 1 OFFSET 4),
  (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2)
),

('09/06/2018',
  (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 76),
  (SELECT id FROM payment ORDER BY id LIMIT 1 OFFSET 76),
  (SELECT id FROM status ORDER BY id LIMIT 1 OFFSET 1),
  (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2)
),

('23/06/2018',
  (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 77),
  (SELECT id FROM payment ORDER BY id LIMIT 1 OFFSET 77),
  (SELECT id FROM status ORDER BY id LIMIT 1 OFFSET 4),
  (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2)
),

('11/06/2018',
  (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 78),
  (SELECT id FROM payment ORDER BY id LIMIT 1 OFFSET 78),
  (SELECT id FROM status ORDER BY id LIMIT 1 OFFSET 1),
  (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2)
),

('25/08/2018',
  (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 79),
  (SELECT id FROM payment ORDER BY id LIMIT 1 OFFSET 79),
  (SELECT id FROM status ORDER BY id LIMIT 1 OFFSET 1),
  (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2)
),

('12/05/2018',
  (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 80),
  (SELECT id FROM payment ORDER BY id LIMIT 1 OFFSET 80),
  (SELECT id FROM status ORDER BY id LIMIT 1 OFFSET 2),
  (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2)
),

('16/10/2018',
  (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 81),
  (SELECT id FROM payment ORDER BY id LIMIT 1 OFFSET 81),
  (SELECT id FROM status ORDER BY id LIMIT 1 OFFSET 3),
  (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2)
),

('03/11/2018',
  (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 82),
  (SELECT id FROM payment ORDER BY id  LIMIT 1 OFFSET 82),
  (SELECT id FROM status ORDER BY id LIMIT 1 OFFSET 1),
  (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2)
),

('21/05/2018',
  (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 83),
  (SELECT id FROM payment ORDER BY id LIMIT 1 OFFSET 83),
  (SELECT id FROM status ORDER BY id LIMIT 1 OFFSET 3),
  (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2)
),

('27/12/2018',
  (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 84),
  (SELECT id FROM payment ORDER BY id LIMIT 1 OFFSET 84),
  (SELECT id FROM status ORDER BY id LIMIT 1 OFFSET 4),
  (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2)
),

('29/01/2018',
  (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 85),
  (SELECT id FROM payment ORDER BY id LIMIT 1 OFFSET 85),
  (SELECT id FROM status ORDER BY id LIMIT 1 OFFSET 2),
  (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2)
),

('13/07/2018',
  (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 86),
  (SELECT id FROM payment ORDER BY id LIMIT 1 OFFSET 86),
  (SELECT id FROM status ORDER BY id LIMIT 1 OFFSET 1),
  (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2)
),

('15/09/2018',
  (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 87),
  (SELECT id FROM payment ORDER BY id LIMIT 1 OFFSET 87),
  (SELECT id FROM status ORDER BY id LIMIT 1 OFFSET 1),
  (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2)
),

('20/05/2018',
  (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 88),
  (SELECT id FROM payment ORDER BY id LIMIT 1 OFFSET 88),
  (SELECT id FROM status ORDER BY id LIMIT 1 OFFSET 1),
    (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2)
),

('31/05/2018',
  (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 89),
  (SELECT id FROM payment ORDER BY id LIMIT 1 OFFSET 89),
  (SELECT id FROM status ORDER BY id LIMIT 1 OFFSET 1),
  (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2)
),

('18/02/2018',
  (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 90),
  (SELECT id FROM payment ORDER BY id LIMIT 1 OFFSET 90),
  (SELECT id FROM status ORDER BY id LIMIT 1 OFFSET 0),
  (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2)
),

('11/06/2018',
  (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 91),
  (SELECT id FROM payment ORDER BY id LIMIT 1 OFFSET 91),
  (SELECT id FROM status ORDER BY id LIMIT 1 OFFSET 1),
  (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2)
),

('02/07/2018',
  (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 92),
  (SELECT id FROM payment ORDER BY id LIMIT 1 OFFSET 92),
  (SELECT id FROM status ORDER BY id LIMIT 1 OFFSET 2),
  (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2)
),

('20/11/2018',
  (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 93),
  (SELECT id FROM payment ORDER BY id LIMIT 1 OFFSET 93),
  (SELECT id FROM status ORDER BY id LIMIT 1 OFFSET 2),
  (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2)
),

('13/10/2018',
  (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 94),
  (SELECT id FROM payment ORDER BY id LIMIT 1 OFFSET 94),
  (SELECT id FROM status ORDER BY id LIMIT 1 OFFSET 3),
  (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2)
),

('25/02/2018',
  (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 95),
  (SELECT id FROM payment ORDER BY id LIMIT 1 OFFSET 95),
  (SELECT id FROM status ORDER BY id LIMIT 1 OFFSET 3),
  (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2)
),

('16/08/2018',
  (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 96),
  (SELECT id FROM payment ORDER BY id LIMIT 1 OFFSET 96),
  (SELECT id FROM status ORDER BY id LIMIT 1 OFFSET 1),
  (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2)
),

('29/01/2018',
  (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 97),
  (SELECT id FROM payment ORDER BY id LIMIT 1 OFFSET 97),
  (SELECT id FROM status ORDER BY id LIMIT 1 OFFSET 3),
  (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2)
),

('04/01/2018',
  (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 98),
  (SELECT id FROM payment ORDER BY id LIMIT 1 OFFSET 98),
  (SELECT id FROM status ORDER BY id LIMIT 1 OFFSET 4),
  (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2)
),

('09/12/2018',
  (SELECT id FROM delivery ORDER BY id LIMIT 1 OFFSET 99),
  (SELECT id FROM payment ORDER BY id  LIMIT 1 OFFSET 99),
  (SELECT id FROM status ORDER BY id LIMIT 1 OFFSET 2),
  (SELECT id FROM pizzeria ORDER BY id LIMIT 1 OFFSET 2)
);

--
-- INSERTION LINK_PIZZA_ORDER_PIZZA
--

INSERT INTO link_pizza_order_pizza (id_pizza, id_pizza_order)
    VALUES

(
    (SELECT id FROM pizza ORDER BY id LIMIT 1),
    (SELECT id FROM pizza_order ORDER BY id LIMIT 1)
),

(
    (SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 1),
    (SELECT id FROM pizza_order ORDER BY id LIMIT 1 OFFSET 1)
),

(
    (SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 2),
    (SELECT id FROM pizza_order ORDER BY id LIMIT 1 OFFSET 2)
),

(
    (SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 3),
    (SELECT id FROM pizza_order ORDER BY id LIMIT 1 OFFSET 3)
),

(
    (SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 4),
    (SELECT id FROM pizza_order ORDER BY id LIMIT 1 OFFSET 4)
),

(
    (SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 5),
    (SELECT id FROM pizza_order ORDER BY id LIMIT 1 OFFSET 5)
),

(
    (SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 6),
    (SELECT id FROM pizza_order ORDER BY id LIMIT 1 OFFSET 6)
),

(
    (SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 7),
    (SELECT id FROM pizza_order ORDER BY id LIMIT 1 OFFSET 7)
),

(
    (SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 8),
    (SELECT id FROM pizza_order ORDER BY id LIMIT 1 OFFSET 8)
),

(
    (SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 9),
    (SELECT id FROM pizza_order ORDER BY id LIMIT 1 OFFSET 9)
),

(
    (SELECT id FROM pizza ORDER BY id LIMIT 1),
    (SELECT id FROM pizza_order ORDER BY id LIMIT 1 OFFSET 10)
),

(
    (SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 1),
    (SELECT id FROM pizza_order ORDER BY id LIMIT 1 OFFSET 11)
),

(
    (SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 2),
    (SELECT id FROM pizza_order ORDER BY id LIMIT 1 OFFSET 12)
),

(
    (SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 3),
    (SELECT id FROM pizza_order ORDER BY id LIMIT 1 OFFSET 13)
),

(
    (SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 4),
    (SELECT id FROM pizza_order ORDER BY id LIMIT 1 OFFSET 14)
),

(
    (SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 5),
    (SELECT id FROM pizza_order ORDER BY id LIMIT 1 OFFSET 15)
),

(
    (SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 6),
    (SELECT id FROM pizza_order ORDER BY id LIMIT 1 OFFSET 16)
),

(
    (SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 7),
    (SELECT id FROM pizza_order ORDER BY id LIMIT 1 OFFSET 17)
),

(
    (SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 8),
    (SELECT id FROM pizza_order ORDER BY id LIMIT 1 OFFSET 18)
),

(
    (SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 9),
    (SELECT id FROM pizza_order ORDER BY id LIMIT 1 OFFSET 19)
),

(
    (SELECT id FROM pizza ORDER BY id LIMIT 1),
    (SELECT id FROM pizza_order ORDER BY id LIMIT 1 OFFSET 20)
),

(
    (SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 1),
    (SELECT id FROM pizza_order ORDER BY id LIMIT 1 OFFSET 21)
),

(
    (SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 2),
    (SELECT id FROM pizza_order ORDER BY id LIMIT 1 OFFSET 22)
),

(
    (SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 3),
    (SELECT id FROM pizza_order ORDER BY id LIMIT 1 OFFSET 23)
),

(
    (SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 4),
    (SELECT id FROM pizza_order ORDER BY id LIMIT 1 OFFSET 24)
),

(
    (SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 5),
    (SELECT id FROM pizza_order ORDER BY id LIMIT 1 OFFSET 25)
),

(
    (SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 6),
    (SELECT id FROM pizza_order ORDER BY id LIMIT 1 OFFSET 26)
),

(
    (SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 7),
    (SELECT id FROM pizza_order ORDER BY id LIMIT 1 OFFSET 27)
),

(
    (SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 8),
    (SELECT id FROM pizza_order ORDER BY id LIMIT 1 OFFSET 28)
),

(
    (SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 9),
    (SELECT id FROM pizza_order ORDER BY id LIMIT 1 OFFSET 29)
),

(
    (SELECT id FROM pizza ORDER BY id LIMIT 1),
    (SELECT id FROM pizza_order ORDER BY id LIMIT 1 OFFSET 30)
),

(
    (SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 1),
    (SELECT id FROM pizza_order ORDER BY id LIMIT 1 OFFSET 31)
),

(
    (SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 2),
    (SELECT id FROM pizza_order ORDER BY id LIMIT 1 OFFSET 32)
),

(
    (SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 3),
    (SELECT id FROM pizza_order ORDER BY id LIMIT 1 OFFSET 33)
),

(
    (SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 4),
    (SELECT id FROM pizza_order ORDER BY id LIMIT 1 OFFSET 34)
),

(
    (SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 5),
    (SELECT id FROM pizza_order ORDER BY id LIMIT 1 OFFSET 35)
),

(
    (SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 6),
    (SELECT id FROM pizza_order ORDER BY id LIMIT 1 OFFSET 36)
),

(
    (SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 7),
    (SELECT id FROM pizza_order ORDER BY id LIMIT 1 OFFSET 37)
),

(
    (SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 8),
    (SELECT id FROM pizza_order ORDER BY id LIMIT 1 OFFSET 38)
),

(
    (SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 9),
    (SELECT id FROM pizza_order ORDER BY id LIMIT 1 OFFSET 39)
),

(
    (SELECT id FROM pizza ORDER BY id LIMIT 1),
    (SELECT id FROM pizza_order ORDER BY id LIMIT 1 OFFSET 40)
),

(
    (SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 1),
    (SELECT id FROM pizza_order ORDER BY id LIMIT 1 OFFSET 41)
),

(
    (SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 2),
    (SELECT id FROM pizza_order ORDER BY id LIMIT 1 OFFSET 42)
),

(
    (SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 3),
    (SELECT id FROM pizza_order ORDER BY id LIMIT 1 OFFSET 43)
),

(
    (SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 4),
    (SELECT id FROM pizza_order ORDER BY id LIMIT 1 OFFSET 44)
),

(
    (SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 5),
    (SELECT id FROM pizza_order ORDER BY id LIMIT 1 OFFSET 45)
),

(
    (SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 6),
    (SELECT id FROM pizza_order ORDER BY id LIMIT 1 OFFSET 46)
),

(
    (SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 7),
    (SELECT id FROM pizza_order ORDER BY id LIMIT 1 OFFSET 47)
),

(
    (SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 8),
    (SELECT id FROM pizza_order ORDER BY id LIMIT 1 OFFSET 48)
),

(
    (SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 9),
    (SELECT id FROM pizza_order ORDER BY id LIMIT 1 OFFSET 49)
),

(
    (SELECT id FROM pizza ORDER BY id LIMIT 1),
    (SELECT id FROM pizza_order ORDER BY id LIMIT 1 OFFSET 50)
),

(
    (SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 1),
    (SELECT id FROM pizza_order ORDER BY id LIMIT 1 OFFSET 51)
),

(
    (SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 2),
    (SELECT id FROM pizza_order ORDER BY id LIMIT 1 OFFSET 52)
),

(
    (SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 3),
    (SELECT id FROM pizza_order ORDER BY id LIMIT 1 OFFSET 53)
),

(
    (SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 4),
    (SELECT id FROM pizza_order ORDER BY id LIMIT 1 OFFSET 54)
),

(
    (SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 5),
    (SELECT id FROM pizza_order ORDER BY id LIMIT 1 OFFSET 55)
),

(
    (SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 6),
    (SELECT id FROM pizza_order ORDER BY id LIMIT 1 OFFSET 56)
),

(
    (SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 7),
    (SELECT id FROM pizza_order ORDER BY id LIMIT 1 OFFSET 57)
),

(
    (SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 8),
    (SELECT id FROM pizza_order ORDER BY id LIMIT 1 OFFSET 58)
),

(
    (SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 9),
    (SELECT id FROM pizza_order ORDER BY id LIMIT 1 OFFSET 59)
),

(
    (SELECT id FROM pizza ORDER BY id LIMIT 1),
    (SELECT id FROM pizza_order ORDER BY id LIMIT 1 OFFSET 60)
),

(
    (SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 1),
    (SELECT id FROM pizza_order ORDER BY id LIMIT 1 OFFSET 61)
),

(
    (SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 2),
    (SELECT id FROM pizza_order ORDER BY id LIMIT 1 OFFSET 62)
),

(
    (SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 3),
    (SELECT id FROM pizza_order ORDER BY id LIMIT 1 OFFSET 63)
),

(
    (SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 4),
    (SELECT id FROM pizza_order ORDER BY id LIMIT 1 OFFSET 64)
),

(
    (SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 5),
    (SELECT id FROM pizza_order ORDER BY id LIMIT 1 OFFSET 65)
),

(
    (SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 6),
    (SELECT id FROM pizza_order ORDER BY id LIMIT 1 OFFSET 66)
),

(
    (SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 7),
    (SELECT id FROM pizza_order ORDER BY id LIMIT 1 OFFSET 67)
),

(
    (SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 8),
    (SELECT id FROM pizza_order ORDER BY id LIMIT 1 OFFSET 68)
),

(
    (SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 9),
    (SELECT id FROM pizza_order ORDER BY id LIMIT 1 OFFSET 69)
),

(
    (SELECT id FROM pizza ORDER BY id LIMIT 1),
    (SELECT id FROM pizza_order ORDER BY id LIMIT 1 OFFSET 70)
),

(
    (SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 1),
    (SELECT id FROM pizza_order ORDER BY id LIMIT 1 OFFSET 71)
),

(
    (SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 2),
    (SELECT id FROM pizza_order ORDER BY id LIMIT 1 OFFSET 72)
),

(
    (SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 3),
    (SELECT id FROM pizza_order ORDER BY id LIMIT 1 OFFSET 73)
),

(
    (SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 4),
    (SELECT id FROM pizza_order ORDER BY id LIMIT 1 OFFSET 74)
),

(
    (SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 5),
    (SELECT id FROM pizza_order ORDER BY id LIMIT 1 OFFSET 75)
),

(
    (SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 6),
    (SELECT id FROM pizza_order ORDER BY id LIMIT 1 OFFSET 76)
),

(
    (SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 7),
    (SELECT id FROM pizza_order ORDER BY id LIMIT 1 OFFSET 77)
),

(
    (SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 8),
    (SELECT id FROM pizza_order ORDER BY id LIMIT 1 OFFSET 78)
),

(
    (SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 9),
    (SELECT id FROM pizza_order ORDER BY id LIMIT 1 OFFSET 79)
),

(
    (SELECT id FROM pizza ORDER BY id LIMIT 1),
    (SELECT id FROM pizza_order ORDER BY id LIMIT 1 OFFSET 80)
),

(
    (SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 1),
    (SELECT id FROM pizza_order ORDER BY id LIMIT 1 OFFSET 81)
),

(
    (SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 2),
    (SELECT id FROM pizza_order ORDER BY id LIMIT 1 OFFSET 82)
),

(
    (SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 3),
    (SELECT id FROM pizza_order ORDER BY id LIMIT 1 OFFSET 83)
),

(
    (SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 4),
    (SELECT id FROM pizza_order ORDER BY id LIMIT 1 OFFSET 84)
),

(
    (SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 5),
    (SELECT id FROM pizza_order ORDER BY id LIMIT 1 OFFSET 85)
),

(
    (SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 6),
    (SELECT id FROM pizza_order ORDER BY id LIMIT 1 OFFSET 86)
),

(
    (SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 7),
    (SELECT id FROM pizza_order ORDER BY id LIMIT 1 OFFSET 87)
),

(
    (SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 8),
    (SELECT id FROM pizza_order ORDER BY id LIMIT 1 OFFSET 88)
),

(
    (SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 9),
    (SELECT id FROM pizza_order ORDER BY id LIMIT 1 OFFSET 89)
),

(
    (SELECT id FROM pizza ORDER BY id LIMIT 1),
    (SELECT id FROM pizza_order ORDER BY id LIMIT 1 OFFSET 90)
),

(
    (SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 1),
    (SELECT id FROM pizza_order ORDER BY id LIMIT 1 OFFSET 91)
),

(
    (SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 2),
    (SELECT id FROM pizza_order ORDER BY id LIMIT 1 OFFSET 92)
),

(
    (SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 3),
    (SELECT id FROM pizza_order ORDER BY id LIMIT 1 OFFSET 93)
),

(
    (SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 4),
    (SELECT id FROM pizza_order ORDER BY id LIMIT 1 OFFSET 94)
),

(
    (SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 5),
    (SELECT id FROM pizza_order ORDER BY id LIMIT 1 OFFSET 95)
),

(
    (SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 6),
    (SELECT id FROM pizza_order ORDER BY id LIMIT 1 OFFSET 96)
),

(
    (SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 7),
    (SELECT id FROM pizza_order ORDER BY id LIMIT 1 OFFSET 97)
),

(
    (SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 8),
    (SELECT id FROM pizza_order ORDER BY id LIMIT 1 OFFSET 98)
),

(
    (SELECT id FROM pizza ORDER BY id LIMIT 1 OFFSET 9),
    (SELECT id FROM pizza_order ORDER BY id LIMIT 1 OFFSET 99)
);

