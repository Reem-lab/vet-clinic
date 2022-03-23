/*Queries that provide answers to the questions from all projects.*/

SELECT * FROM animals
WHERE name LIKE '%mon'

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

