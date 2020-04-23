SELECT COUNT(*) AS "# of countries in Africa"
FROM countries
WHERE continent = "Africa";

SELECT SUM(population_years.population) AS "Population in Oceania" FROM countries
JOIN population_years ON countries.id = population_years.country_id
WHERE countries.continent = "Oceania" AND population_years.year = 2005;

SELECT ROUND(AVG(population_years.population),3) AS "Average population in South America" FROM countries
JOIN population_years ON countries.id = population_years.country_id
WHERE countries.continent = "South America" AND population_years.year = 2003;

SELECT countries.name, population_years.population FROM countries
JOIN population_years ON countries.id = population_years.country_id
WHERE population_years.year = 2007 AND population IS NOT NULL
ORDER BY 2 ASC
LIMIT 1;

SELECT countries.name, ROUND(AVG(population_years.population),3) AS "Avg. pop in Poland" FROM countries
JOIN population_years ON countries.id = population_years.country_id
WHERE countries.name = "Poland";

SELECT DISTINCT name FROM countries
WHERE name LIKE "% the%";

SELECT countries.continent, SUM(population_years.population) FROM countries
JOIN population_years ON countries.id = population_years.country_id
WHERE population_years.year = 2010
GROUP BY 1
ORDER BY 2 DESC;
