/* Database schema to keep the structure of entire database. */

CREATE TABLE animals (
id INT GENERATED ALWAYS AS IDENTITY,
name varchar(100),
date_of_birth date,
escape_attempts INT,
neutered boolean,
weight_kg decimal,
species varchar(50),
	PRIMARY KEY(id)
);