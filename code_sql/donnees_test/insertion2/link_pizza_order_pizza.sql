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
