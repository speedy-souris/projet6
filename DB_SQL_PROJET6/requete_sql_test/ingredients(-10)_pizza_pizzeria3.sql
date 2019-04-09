SELECT 
  preparation.id as N°pizza_prepation, 
  preparation.pizza_recipe as pizza_ingredient, 
  ingredient.ingredient_name, 
  pizza.pizza_name
FROM 
  public.preparation
  JOIN pizza ON pizza.id = preparation.id_pizza
  JOIN ingredient ON ingredient.id = preparation.id_ingredient
  WHERE preparation.id_ingredient in (
	SELECT stock.id_ingredient 
	FROM stock 
	WHERE id_pizzeria = 3 AND stock.quantity <10
 );
