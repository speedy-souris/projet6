SELECT pizza_order.id as N°commande_attente_pizzeria2 FROM pizza_order
INNER JOIN status on status.id = pizza_order.id_status
INNER JOIN pizzeria ON pizzeria.id = pizza_order.id_pizzeria
WHERE status.id = 5 AND pizzeria.id = 2;
