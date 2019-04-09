SELECT pizza_order.id as N°commande_preparation_pizzeria1 
FROM pizza_order
INNER JOIN status 
ON status.id = pizza_order.id_status
INNER JOIN pizzeria 
ON pizzeria.id = pizza_order.id_pizzeria
WHERE 
status.id = 1 AND pizzeria.id = 1;
