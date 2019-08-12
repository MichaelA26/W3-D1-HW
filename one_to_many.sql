Code up until adding SERIAL to Characters/Starter code for one_to_many

DROP TABLE lightsabers;
DROP TABLE characters;

CREATE TABLE characters (
  id SERIAL8 PRIMARY KEY,
  name VARCHAR(255),
  darkside BOOLEAN,
  age INT
);

CREATE TABLE lightsabers (
  id SERIAL8 PRIMARY KEY,
  colour VARCHAR(255) NOT NULL,
  hilt_metal VARCHAR(255) NOT NULL,
  character_id INT8 REFERENCES characters(id)
);

INSERT INTO characters (name, darkside, age) VALUES ('Obi-Wan Kenobi', false,  27);
INSERT INTO characters (name, darkside, age) VALUES ('Anakin Skywalker', false, 19);
INSERT INTO characters (name, darkside, age) VALUES ('Darth Maul', true, 32);

INSERT INTO characters (name, darkside) VALUES ('Yoda', false);

UPDATE characters SET (name, darkside) = ('Darth Vader', true) WHERE name = 'Anakin Skywalker';

DELETE FROM characters WHERE name = 'Darth Maul';

INSERT INTO characters (name, darkside, age) VALUES ('Stormtrooper', true, 25);
INSERT INTO characters (name, darkside, age) VALUES ('Stormtrooper', true, 25);
INSERT INTO characters (name, darkside, age) VALUES ('Stormtrooper', true, 25);
INSERT INTO characters (name, darkside, age) VALUES ('Stormtrooper', true, 25);
INSERT INTO characters (name, darkside, age) VALUES ('Stormtrooper', true, 25);

UPDATE characters SET age = 29 WHERE id = 9;

INSERT INTO lightsabers (colour, hilt_metal, character_id) VALUES ('green', 'palladium', 1);
INSERT INTO lightsabers (colour, hilt_metal, character_id) VALUES ('red', 'gold', 2);
INSERT INTO lightsabers (colour, hilt_metal, character_id) VALUES ('red', 'gold', 2);

SELECT * FROM characters;
SELECT * FROM lightsabers;

SELECT * FROM lightsabers WHERE character_id = 2;
