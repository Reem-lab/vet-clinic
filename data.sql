/* Populate database with sample data. */


INSERT INTO animals (name,date_of_birth,escape_attempts,neutered, weight_kg)
VALUES ('Agumon', '3-2-2020', 0 , true, 10.23),
       ('Gabumon', '11-15-2018', 2 , true, 8),
       ('Pikachu', '1-7-2021', 1 , false, 15.04),
       ('Devimon', '5-12-2017', 5 , true, 11),
	   ('Charmander', '2-8-2020', 0 , false, -11),
	   ('Plantmon', '11-15-2021', 2 , true, -5.7),
	   ('Squirtle', '4-2-1993', 3 , false, -12.13),
	   ('Angemon', '6-12-2005', 1 , true, -45),
	   ('Boarmon', '6-7-2005', 7 , true, 20.4),
	   ('Blossom', '10-13-1998', 3 , true, 17),
	   ('Ditto', '5-14-2022', 4 , true, 22);


INSERT INTO owners (full_name, age)
VALUES ('Sam Smith', 34),
       ('Jennifer Orwell', 19),
	   ('Bob', 45),
	   ('Melody Pond', 77),
	   ('Dean Winchester', 14),
	   ('Jodie Whittaker ', 38);

INSERT INTO species (name)
VALUES ('pokemon'),
       ('Digimon');

