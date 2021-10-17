-- Muestra la cantidad de pokemones tipo fuego con fuerza mayor a 90
SELECT COUNT(*) AS CANTIDAD_POKEMONES
FROM pokemon_proyects.pokemon AS p
	INNER JOIN pokemon_proyects.atributos AS a ON p.id = a.pokemon_id
WHERE a.ataque > 90 and
p.tipo_1 = "Fire";
-- Muestra el listado de pokemons tipo fuego con fuerza mayor a 90
SELECT * 
FROM pokemon_proyects.pokemon AS p
	INNER JOIN pokemon_proyects.atributos AS a ON p.id = a.pokemon_id
WHERE a.ataque > 90 and
p.tipo_1 = "Fire";
-- Muestra el promedio de atributos por tipo de pokemon ordenado por vida en forma descendente
SELECT p.tipo_1, avg(a.vida), avg(a.ataque), avg(a.defensa), avg(a.ataque_especial), avg(a.defensa_especial), avg(a.velocidad) 
FROM pokemon_proyects.pokemon AS p
	INNER JOIN pokemon_proyects.atributos AS a ON p.id = a.pokemon_id
GROUP BY p.tipo_1
ORDER BY AVG(a.vida) DESC;
-- Misma consulta pero mostrando solo los agrupados cuyo promedio de ataque sea mayor a 80
SELECT p.tipo_1, avg(a.vida), avg(a.ataque), avg(a.defensa), avg(a.ataque_especial), avg(a.defensa_especial), avg(a.velocidad) 
FROM pokemon_proyects.pokemon AS p
	INNER JOIN pokemon_proyects.atributos AS a ON p.id = a.pokemon_id
GROUP BY p.tipo_1
HAVING avg(a.ataque) > 80
ORDER BY AVG(a.vida) DESC;