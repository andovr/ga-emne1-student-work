-- 2.1: Her kan der fungere  lage to tabeller. areas og animals. areas har radene id, name og animal_id. animals har radene id,name,species, weight, arrival_date og area_id

-- 3.1
CREATE DATABASE IF NOT EXISTS animal_Shelter_practice;

USE animal_Shelter_practice;

SELECT DATABASE();

-- 3.2
CREATE TABLE areas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(40) NOT NULL UNIQUE
);

-- 3.3
CREATE TABLE animals (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(40) NOT NULL,
    species VARCHAR(40) NOT NULL,
    weight DECIMAL(5,2),
    admittet_on DATE,
    area_id INT NOT NULL,
    FOREIGN KEY (area_id) REFERENCES areas(id)
);

--3.4
SELECT *
FROM areas;

SELECT *
FROM animals;


