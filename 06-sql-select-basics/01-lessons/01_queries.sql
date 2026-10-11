-- Enkel spørring for å finne alle byene i Noreg
SELECT *
FROM city
WHERE countrycode = 'NOR';

-- Spørring om alle byer med populasjon over 1 mill.
SELECT Name, Population
FROM city
WHERE Population > 1000000;

-- Spørring om namn og befolkning for land i europa
SELECT Name, Population
FROM country
WHERE Continent = 'Europe';

-- Spørring om namn og befolkning i Noreg og Sverige over 150 000.
SELECT Name, Population
FROM city
WHERE (CountryCode = 'NOR'
    OR CountryCode = 'SWE')
    AND Population > 150000;

-- Spørring om dei 5 største byene i verda.
SELECT Name, Population
FROM city
WHERE Population > 1000000
ORDER BY Population DESC
LIMIT 5;

-- Spørring om byer i Sverige med populasjon over 100 000 sortert med størst først
SELECT Name, Population
FROM city
WHERE Population > 100000
    AND CountryCode = 'SWE'
ORDER BY Population DESC;

-- Wildcard % og _ kan brukast saman med keyword LIKE for å finne liknande data.
SELECT Name
FROM city
WHERE Name LIKE 'O__o';

-- Kordeord IN kan brukast for å leite gjennom fleire i ei liste framfor å bruke fleire OR.
SELECT Name, CountryCode
FROM city
WHERE CountyCode IN
        ('NOR', 'SWE', 'DNK')
ORDER BY CountryCode, Name;

-- Bruker NULL for å finne alle land som ikkje har vore okkupert.
SELECT Name, Continent
FROM country
WHERE IndepYear IS NULL;

-- COUNT() funksjonen kan telle kor mange kolonner som oppfyller kravet.
SELECT COUNT(*)
FROM country
WHERE IndepYear IS NULL;

-- AS kan brukast som keyword for å endre namn på kolonner.
SELECT COUNT(*) AS NumberOfNorwegianCities
FROM city
WHERE CountryCode = 'NOR';