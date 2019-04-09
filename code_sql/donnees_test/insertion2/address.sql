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
