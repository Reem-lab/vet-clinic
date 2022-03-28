/*Queries that provide answers to the questions from all projects.*/

SELECT * FROM animals
WHERE name LIKE '%mon';

SELECT name
FROM animals
WHERE date_of_birth BETWEEN '2016' AND '2019';

SELECT name
FROM animals
WHERE date_of_birth BETWEEN '2016' AND '2019';

SELECT name
FROM animals
WHERE neutered=true AND escape_attempts < 3;

SELECT date_of_birth 
FROM animals
WHERE name = 'Agumon' AND name = 'Pikachu';

SELECT name, escape_attempts 
FROM animals
WHERE weight_kg > 10.5;

SELECT * FROM animals
WHERE neutered=true;

SELECT * FROM animals
WHERE NOT name= 'Gabumon';

SELECT * FROM animals
WHERE weight_kg= 10.4 AND  weight_kg= 17.3 AND weight_kg BETWEEN 10.4 AND 17.3;


/* Transactions and Delete and update quiries*/
BEGIN;

UPDATE animals
SET species = 'unspecified'

ROLLBACK;

BEGIN;

UPDATE animals
SET species = 'digimon'
WHERE name LIKE '%mon';

UPDATE animals
SET species = 'pokemon'
WHERE Not name LIKE '%mon';

COMMIT;

BEGIN;

DELETE FROM animals;

ROLLBACK;


BEGIN;

DELETE FROM animals;
WHERE date_of_birth < 'Jan 1st, 2022';

SAVEPOINT SP1;

UPDATE animals
SET  weight_kg =  weight_kg * -1;
 ROLLBACK TO SP1;

UPDATE animals
SET  weight_kg =  weight_kg * (-1)
WHERE  weight_kg < 0;

COMMIT;

/* Aggregate functions and quiries*/
SELECT count (*) as 'Number of animals'
FROM animals;

SELECT count (*) as 'Number of animals never try to escape'
FROM animals;
WHERE escape_attempts = 0;

SELECT avg(weight_kg) as ' average of the weights'
FROM animals

SELECT max(escape_attempts) as 'the most one escape',
FROM animals
GROUP BY neutered;

SELECT max(weight_kg) as 'the maximum weight',
 max(weight_kg) as 'the minimun weight'
FROM animals
GROUP BY species;

SELECT avg(escape_attempts) as ' average of the escape attempts'
FROM animals
WHERE date_of_birth BETWEEN '1990' AND '2000'
GROUP BY species;

ALTER TABLE animals
DROP COLUMN species;

ALTER TABLE animals
ADD species_id INT;

ALTER TABLE animals
ADD owner_id INT;

ALTER TABLE animals 
   ADD FOREIGN KEY (species_id) REFERENCES species (id);

ALTER TABLE animals 
   ADD FOREIGN KEY (owner_id) REFERENCES owners (id);

UPDATE animals
SET species_id = 2
WHERE name LIKE '%mon';

UPDATE animals
SET species_id = 1
WHERE NOT name LIKE '%mon';

UPDATE animals
SET owner_id = 1
WHERE name = 'Agumon';

UPDATE animals
SET owner_id = 2
WHERE name = 'Gabumon' AND name = 'Pikachu';

UPDATE animals
SET owner_id = 3
WHERE name = 'Devimon' AND name = 'Plantmon';


UPDATE animals
SET owner_id = 4
WHERE name = 'Charmander' AND name = 'Squirtle' AND name = 'Blossom';

UPDATE animals
SET owner_id = 5
WHERE name = 'Angemon' AND name = 'Boarmon';

SELECT *
FROM animals
 INNER JOIN owners
 ON animals.owner_id = owners.id
 WHERE owners.full_name = 'Melody Pond';

SELECT *
FROM animals
 INNER JOIN species
 ON animals.species_id = species.id
 WHERE species.name = 'pokemon';

 SELECT name , full_name
 FROM animals
 INNER JOIN owners
 ON animals.owner_id = owners.id;


SELECT count (*) as "Number of animals"
FROM animals
GROUP BY species_id;

SELECT *
FROM animals
 JOIN owners
 ON animals.owner_id = owners.id
 INNER JOIN species
 ON animals.species_id = species.id
 WHERE owners.full_name = 'Jennifer Orwell' AND species.name = 'Digimon';

SELECT *
FROM animals
 JOIN owners
 ON animals.owner_id = owners.id
 WHERE owners.full_name = 'Melody Pond' AND animals.escape_attempts = 0;

 SELECT owners.full_name
 FROM owners
 JOIN animals
 ON owners.id = animals.owner_id
 GROUP BY full_name
 ORDER BY COUNT(animals.owner_id) DESC
 LIMIT 1;

-- Who was the last animal seen by William Tatcher?
SELECT animals.name, vets.name, data_of_visit
FROM visits
JOIN vets ON visits.vets_id = vets.id
JOIN animals ON visits.animals_id = animals.id
WHERE vets.name = 'William Thatcher'
ORDER by data_of_visit DESC
LIMIT 1 ;

-- How many different animals did Stephanie Mendez see?
SELECT COUNT(animals.name)
FROM visits
JOIN vets ON visits.vets_id = vets.id
JOIN animals ON visits.animals_id = animals.id
WHERE vets.name = 'Stephanie Mendez';

-- List all vets and their specialties, including vets with no specialties.
SELECT *
FROM vets
JOIN specialization ON vets.id = specialization.vet_id;

-- List all animals that visited Stephanie Mendez between April 1st and August 30th, 2020.
SELECT animals.name, data_of_visit
FROM visits
JOIN vets ON visits.vets_id = vets.id
JOIN animals ON visits.animals_id = animals.id
WHERE vets.name = 'Stephanie Mendez'
AND visits.data_of_visit BETWEEN '4-1-2020' AND '8-30-2020';


-- What animal has the most visits to vets?
SELECT animals.name
FROM visits
JOIN vets ON visits.vets_id = vets.id
JOIN animals ON visits.animals_id = animals.id
GROUP by animals.name
ORDER by COUNT(animals.name) DESC 
LIMIT 1;


-- Who was Maisy Smith's first visit?
SELECT animals.name, vets.name, data_of_visit
FROM visits
JOIN vets ON visits.vets_id = vets.id
JOIN animals ON visits.animals_id = animals.id
WHERE vets.name = 'Maisy Smith'
ORDER by data_of_visit ASC
LIMIT 1 ;

-- Details for most recent visit: animal information, vet information, and date of visit.
SELECT *
FROM visits
JOIN vets ON visits.vets_id = vets.id
JOIN animals ON visits.animals_id = animals.id
ORDER BY visits.data_of_visit DESC;

-- How many visits were with a vet that did not specialize in that animal's species?
SELECT COUNT(visits.animals_id)
FROM visits
JOIN vets ON visits.vets_id = vets.id
JOIN specialization ON specialization.species_id = vets.id
WHERE specialization.species_id IS NULL;

-- What specialty should Maisy Smith consider getting? Look for the species she gets the most.
SELECT COUNT(visits.animals_id), animals.name
FROM visits
JOIN vets ON visits.vets_id = vets.id
JOIN animals ON visits.animals_id = animals.id
WHERE vets.name = 'Maisy Smith'
GROUP by animals.name
ORDER by COUNT(animals.name) DESC
LIMIT 1 ;

-- paire programming
-- Add an email column to your owners table
ALTER TABLE owners ADD COLUMN email VARCHAR(120);

INSERT INTO visits (animals_id, vets_id, data_of_visit) SELECT * FROM (SELECT id FROM animals) animals_id, (SELECT id FROM vets) vets_id, generate_series('1980-01-01'::timestamp, '2021-01-01', '4 hours') visit_timestamp;

insert into owners (full_name, email) select 'Owner ' || generate_series(1,2500000), 'owner_' || generate_series(1,2500000) || '@mail.com';

explain analyze SELECT COUNT(*) FROM visits where animals_id = 4;
 CREATE INDEX animals_id_asc ON animals(animals_id ASC);
 explain analyze SELECT COUNT(*) FROM visits where animals_id = 4;