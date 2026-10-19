-- Vis alle bynavn + befolkning der byen har flere innbyggere enn gjennomsnittet
-- av innbyggere for byer i hele verden.

SELECT AVG(Population)
From city;
-- 350468.2236

SELECT Name, Population
FROM city
WHERE Population > (
    SELECT AVG(Population)
    From city
)
ORDER BY Population ASC;

-- Vi bruker subquerries når vi må finne data før ein kan finne data frå den andre spørringen.
