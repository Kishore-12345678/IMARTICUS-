create database pokeman;
use pokeman;
SELECT * FROM pokeman.pokemon_data;

#1. List all Pokémon with Base Stats greater than 500.
SELECT Name, Base_Stats
FROM pokeman.pokemon_data
WHERE Base_Stats > 500;

#2. Find all Fire-type Pokémon.
SELECT Name, `Type 1`,`Type 2`
FROM pokeman.pokemon_data
WHERE `Type 1` = 'Fire' OR `Type 2` = 'Fire';

#3. Get Pokémon that are both Grass and Poison type.
SELECT Name
FROM pokeman.pokemon_data
WHERE (`Type 1` = 'Grass' AND `Type 2` = 'Poison') OR (`Type 1` = 'Poison' AND `Type 2` = 'Grass');

#4. Find all Pokémon weaker than Pikachu based on Base Stats.
SELECT Name, Base_Stats
FROM pokeman.pokemon_data
WHERE Base_Stats < (
    SELECT Base_Stats FROM pokemon_data WHERE Name = 'Pikachu'
);

#5. List the top 5 Pokémon with the highest Speed.
SELECT Name, Speed
FROM pokeman.pokemon_data
ORDER BY Speed DESC
LIMIT 5;

#6. Count how many Pokémon are of each primary type.
SELECT `Type 1`, COUNT(*) AS TypeCount
FROM pokeman.pokemon_data
GROUP BY `Type 1`
ORDER BY TypeCount DESC;

#7. Find all Legendary Pokémon.
SELECT Name
FROM pokeman.pokemon_data
WHERE Is_Legendary = 1;

#. Find the average Base Stats for each generation.
SELECT gen, AVG(Base_Stats) AS Avg_Base_Stats
FROM pokeman.pokemon_data
GROUP BY gen
ORDER BY gen;

#9. Get all Pokémon who are weak to Electric type.
SELECT Name, electric_weakness
FROM pokeman.pokemon_data
WHERE electric_weakness > 1;

#10. Which Pokémon has the highest Attack stat?
SELECT Name, Attack
FROM pokeman.pokemon_data
ORDER BY Attack DESC
LIMIT 1;

#11. Find all Pokémon with more than one ability.
SELECT Name, abilities
FROM pokeman.pokemon_data
WHERE abilities LIKE '%;%';

#12. List all Pokémon that are Flying-type but NOT Legendary.
SELECT Name, `Type 1`, `Type 2`
FROM pokeman.pokemon_data
WHERE (`Type 1` = 'Flying' OR `Type 2` = 'Flying') AND Is_Legendary = 0;

#13. Find all Pokémon whose weight is less than 10 kg.
SELECT Name, weight_kilograms
FROM pokeman.pokemon_data
WHERE weight_kilograms < 10;

#14. List all Mythical Pokémon and their generation.
SELECT Name, gen
FROM pokeman.pokemon_data
WHERE Is_Mythical = 1;

#15. Show the Pokémon with the lowest HP.
SELECT Name, HP
FROM pokeman.pokemon_data
ORDER BY HP ASC
LIMIT 1;
