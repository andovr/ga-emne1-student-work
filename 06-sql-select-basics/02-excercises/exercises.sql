-- Oppgåve 2
SELECT Name, Population
From city
WHERE CountryCode = 'SWE';

-- Database er eit sett med organiserte data som er enklare å lagre og hente informasjon frå enn ein vanleg fil.
-- DBMS står for database management system og er programmet som interagerer med brukaren, applikasjonar og databasen for å hente ut og analysere data.
-- SQL står for structured query language og er eit relasjonelt DBMS. MySQL er eit døme.
-- Tabell i ein database er ein mengde verdiar organisert i rader og kolonner. Til dømes er city ein tabell i databasen world.
-- Rad er identifisert av ein unik primærnøkkel. Ein tabell kan ha ein vilkårleg mengde rader.
-- Kolonne er eit definert antal. Ein kolonne kan til dømed vere bynamn, befolkning o.l.
-- Primærnøkkler er unike identifiseringar av ein rad. Til dømes har kvart land i counties tabellen ein unik id som første verdi.
-- Fremmednøkkler er ein henvisning til data i ein annan database. Til dømes kan ein boktabell henvise til ein forfattertabell med ein fremmednøkkel.

-- Oppgåve 3.1
SELECT *
From country;
-- CODE er primærnøkkelen til country
-- Name er namn på landet.
-- Continent er kontinentet landet ligger på.
-- Population er befolkningstalet i landet.

-- Oppgåve 3.2
SELECT Code, Name, Continent
From country;

SELECT Name, Code, Continent
From country;

-- Oppgåve 3.3
SELECT Name, CountryCode, District
From city;

SELECT *
From city;
-- Forskjellen er at du ikkje får med kolonnene ID elle population i første spørring.

-- Oppgåve 4.1
SELECT Name, District, Population
From city
WHERE CountryCode = 'JPN';

-- Oppgåve 4.2
SELECT Name, Population
From country
WHERE Continent = 'South America';

-- Oppgåve 4.3
SELECT Name, SurfaceArea
From country
WHERE SurfaceArea < 1000;

SELECT Name, SurfaceArea
From country
WHERE SurfaceArea <= 1000;

-- Oppgåve 4.4
SELECT Name, CountryCode, District
From city
WHERE District <> 'California';
-- Den henter alle byer i verden utenom frå California og ikkje berre USA fordi vi ikkje har avgrensa til at det kun skal gjelde USA.

-- Oppgåve 5.1
SELECT Name, Population
From city
WHERE CountryCode = 'BRA'
  AND Population > 500000;

-- Oppgåve 5.2
SELECT Name, Population
From country
WHERE Population > 2000000
  AND Population < 8000000;

-- Oppgåve 5.3
SELECT Name, CountryCode, Population
From city
WHERE (CountryCode = 'AUS'
   OR CountryCode = 'NZL')
  AND Population > 200000;

-- Oppgåve 6.1
SELECT Name, Region
From country
WHERE Continent = 'Asia'
ORDER BY Name ASC;

SELECT Name, Region
From country
WHERE Continent = 'Asia'
ORDER BY Name;

-- Oppgåve 6.2
SELECT Name, SurfaceArea
From country
ORDER BY SurfaceArea DESC
LIMIT 8;

-- Oppgåve 6.3
SELECT Name, District, Population
From city
WHERE CountryCode = 'CAN'
ORDER BY District, Population DESC, ID ASC;

-- Oppgåve 6.4
SELECT Code, Name
From country
LIMIT 5;

SELECT Code, Name
From country
ORDER BY Name
LIMIT 5;
-- Ein er ikkje garantert same resultat fordi ein ikkje førtst har sortert etter namn.

-- Oppgåve 7.1
SELECT *
From country
WHERE Name LIKE 'B%';

SELECT *
From country
WHERE Name LIKE 'Br%';
-- Utvalget minsker

-- Oppgåve 7.2
SELECT *
From country
WHERE Name LIKE '%stan'
ORDER BY Name;
-- Brukar % forran stan fordi det skal slutte på stan.
SELECT *
From country
WHERE Name LIKE '%is%'
ORDER BY Name;
-- Brukar % før og etter is fordi det skal innehalde is. Det vil seie det kan vere skrift både før og etter is.

-- Oppgåve 7.3
SELECT *
From country
WHERE Name LIKE '_a%';

SELECT *
From country
WHERE Name LIKE '____';

-- Oppgåve  8.1
SELECT Name, CountryCode, Population
From city
WHERE CountryCode IN
('FRA', 'ESP', 'PRT')
ORDER BY CountryCode, Name;

-- Oppgåve 8.2
SELECT Name, CountryCode, Population
From city
WHERE CountryCode = 'FRA'
   OR CountryCode = 'ESP'
   OR CountryCode = 'PRT'
ORDER BY CountryCode, Name;

SELECT Name, CountryCode, Population
From city
WHERE (CountryCode = 'FRA'
   OR CountryCode = 'ESP'
   OR CountryCode = 'PRT')
  AND Population > 300000
ORDER BY CountryCode, Name;

SELECT Name, CountryCode, Population
From city
WHERE CountryCode IN
      ('FRA', 'ESP', 'PRT')
  AND Population > 300000
ORDER BY CountryCode, Name;

-- Oppgåve 8.3
SELECT Name, LifeExpectancy
From country
WHERE LifeExpectancy IS NULL;
-- Null betyr ikkje at levealderen er 0 år, men at det ikkje finnast data for dette i dei aktuelle landa.

-- Oppgåve 8.4
SELECT Name, LifeExpectancy
From country
WHERE LifeExpectancy IS NOT NULL
ORDER BY LifeExpectancy DESC, Code ASC
LIMIT 10;

-- Oppgåve 9.1
SELECT COUNT(*) AS CityCount
FROM city;

SELECT COUNT(*) AS CountryCount
FROM country;
-- Spørringen gir 1 resultatrad som er ein telling av antal rader i tabellane.

-- Oppgåve 9.2
SELECT COUNT(*) AS LargeCityCount
From city
WHERE CountryCode = 'MEX'
  AND Population > 500000;

SELECT Name, Population
FROM city
WHERE CountryCode = 'MEX'
  AND Population > 500000;

-- Oppgåve 9.3
SELECT COUNT(*) AS LifeExpectancyCount
From country
WHERE LifeExpectancy IS NOT NULL;

SELECT COUNT(*) AS NoLifeExpectancyCount
From country
WHERE LifeExpectancy IS NULL;

-- Oppgåve 10.1
-- Koden manglar komma imellom Name og Population
SELECT Name, Population
FROM city
WHERE CountryCode = 'ITA';

-- Oppgåve 10.2
-- Spørringen manglar sitatteikn på landskoden.
SELECT Name, Population
FROM city
WHERE CountryCode = 'ITA';

-- Oppgåve 10.3
SELECT Name, CountryCode, Population
FROM city
WHERE (CountryCode = 'EGY'
  OR CountryCode = 'MAR')
 AND Population > 1000000;
-- Den originale spørringen finner byar i Marokko med populasjon over ein million, men alle byar i Egypt

-- Oppgåve 10.4
SELECT Name, HeadOfState
FROM country
WHERE HeadOfState IS NULL;
-- Må bruke IS og ikkje = når ein samanliknar med NULL

-- Utfordring 1
SELECT Name, Region, Population, SurfaceArea
FROM country
WHERE Region IN
('Caribbean', 'Polynesia', 'Micronesia')
  AND Population > 100000
  AND SurfaceArea < 10000
ORDER BY Region, Population DESC, Code ASC;

SELECT COUNT(*) AS CountryCount
FROM country
WHERE Region IN
('Caribbean', 'Polynesia', 'Micronesia')
  AND Population > 100000
  AND SurfaceArea < 10000;

