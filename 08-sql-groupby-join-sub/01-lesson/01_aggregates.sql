SELECT SUM(population)
FROM country;

SELECT AVG(population)
FROM country;

SELECT MIN(population)
FROM country;

SELECT MAX(population)
FROM country;

SELECT SUM(population),
       AVG(Population),
       MIN(Population),
       MAX(population)
FROM city
WHERE CountryCode = 'NOR';

SELECT Name, Population / 1000000 AS pop_millions
FROM country;

SELECT Name, Population / 1000000 AS pop_millions
FROM country
WHERE Population > 1000000
ORDER BY pop_millions DESC;

SELECT Continent, SUM(Population)
FROM country
-- WHERE
GROUP BY Continent
-- ORDER BY
-- LIMIT;

SELECT Continent,Region , SUM(Population), COUNT(*)
FROM country
-- WHERE
GROUP BY Continent, Region
ORDER BY Continent ASC, Region ASC;
-- LIMIT

SELECT Continent,Region , SUM(Population), COUNT(*)
FROM country
-- WHERE
GROUP BY Continent, Region
ORDER BY Continent ASC, SUM(Population) DESC;
-- LIMIT

SELECT Continent, COUNT(*) AS country_count
FROM country
WHERE Population > 10000000
GROUP BY Continent
HAVING country_count >= 5;
-- ORDER BY Continent ASC, SUM(Population) DESC;
-- LIMIT

SELECT Continent, COUNT(*) AS country_count
FROM country
WHERE Population > 10000000
GROUP BY Continent
HAVING country_count >= 5
ORDER BY country_count ASC;
-- LIMIT