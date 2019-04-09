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
