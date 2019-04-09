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
