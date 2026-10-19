SELECT CountryCode, Code, country.Name AS country_name, city.Name AS city_name
FROM city
JOIN country ON CountryCode = Code;

SELECT country.Name,
       city.Name
FROM country
LEFT JOIN city ON city.CountryCode = country.code
ORDER BY country.Name;

SELECT country.Name,
       city.Name
FROM country
LEFT JOIN city ON city.CountryCode = country.code
WHERE city.Name IS NULL
ORDER BY country.Name;

SELECT country.Name,
       city.Name
FROM country
LEFT JOIN city ON city.CountryCode = country.code
               AND city.Population > 1000000
ORDER BY country.Name;

SELECT country.Name,
       city.Name
FROM country
LEFT JOIN city ON city.CountryCode = country.code
WHERE city.Population > 1000000
ORDER BY country.Name;