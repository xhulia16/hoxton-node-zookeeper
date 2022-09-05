--Creating a table 

CREATE TABLE animals (
id INTEGER,
species TEXT NOT NULL,
name TEXT NOT NULL, 
age INTEGER NOT NULL,  
fed TEXT NOT NULL, 
favorite_food TEXT NOT NULL,
PRIMARY KEY (id)
);

--Adding values for each column created 
INSERT INTO 
animals(species, name, age, fed, favorite_food)
VALUES
("penguin", "Pingu", 5, "yes", "fish"), 
("capybara", "Capy", 2, "yes", "grass") ,
("alpaca",	"Fluffy", 1, "no", "carrots"),
("sugar glider", "Yoda", 3, "no", "nectar");

-- updating the fed column value 
UPDATE animals 
set fed="yes"
WHERE id=3 

-- updating the age column value 
UPDATE animals 
set age=1
WHERE name="Capy" 

--removing a row from the table 
DELETE FROM animals 
WHERE name="Pingu"

--removing a column from the table 
ALTER TABLE animals DROP COLUMN favorite_food;

--creating a column 
ALTER TABLE animals ADD COLUMN origin TEXT;

--adding value to the column that was just created
UPDATE animals 
SET origin= "Gjirokaster"
WHERE id=2;

UPDATE animals 
SET origin= "Shkoder"
WHERE id=3;
 
--challenge

UPDATE animals
set fed="yes"