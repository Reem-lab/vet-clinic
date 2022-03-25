/* Database schema to keep the structure of entire database. */

CREATE TABLE animals (
id INT GENERATED ALWAYS AS IDENTITY,
name varchar(100),
date_of_birth date,
escape_attempts INT,
neutered boolean,
weight_kg decimal,
species_id INT,
owner_id INT,
PRIMARY KEY(id)
);

CREATE TABLE owners (
id INT GENERATED ALWAYS AS IDENTITY,
full_name varchar(100),
age INT,
PRIMARY KEY(id)
);

CREATE TABLE species  (
id INT GENERATED ALWAYS AS IDENTITY,
name varchar(100),
PRIMARY KEY(id)
);

CREATE TABLE vets   (
id INT GENERATED ALWAYS AS IDENTITY,
name varchar(100),
age INT,
date_of_graduation date,
PRIMARY KEY(id)
);

CREATE TABLE specialization (
    vet_id INT,
    species_id INT,
     FOREIGN KEY (vet_id) REFERENCES vets(id),
     FOREIGN KEY (species_id) REFERENCES  species(id)
);

CREATE TABLE visits (
    animals_id INT ,
    vets_id INT ,
    FOREIGN KEY (animals_id) REFERENCES  animals(id),
    FOREIGN KEY (vets_id) REFERENCES vets(id),
    data_of_visit varchar(50)
);



