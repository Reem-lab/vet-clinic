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
VALUES ('Pokemon'),
       ('Digimon');

INSERT INTO vets (name, age, date_of_graduation)
VALUES ('William Tatcher', 25 , '4-23-2000'),
       ('Maisy Smith', 26 , '1-17-2019'),
       ('Stephanie Mendez', 64 , '5-4-1981'),
       ('Jack Harkness', 38 , '6-8-2008');


INSERT INTO specialization (vet_id, species_id)
VALUES (1,1),
       (3,2),
       (3,1),
       (4,2);

INSERT INTO visits (vets_id, animals_id,data_of_visit)
VALUES (1,1,'5-24-2020'), 
       (3,1,'7-22-2020'), 
       (4,2,'5-24-2021'), 
       (2,3,'1-5-2020'), 
       (2,3,'3-8-2020'), 
       (2,3,'5-14-2020'), 
       (3,4,'5-4-2021'), 
       (4,5,'2-24-2021'), 
       (2,6,'12-21-2019'), 
       (1,6,'8-10-2020'), 
       (2,6,'4-7-2021'), 
       (3,7,'9-29-2019'), 
       (4,8,'10-3-2020'), 
       (4,8,'11-4-2020'), 
       (2,9,'1-24-2019'), 
       (2,9,'5-15-2019'), 
       (2,9,'2-27-2020'),
       (2,9,'8-3-2020'),
       (3,10,'5-24-2020'),
       (1,10,'1-11-2021');