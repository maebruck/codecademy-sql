SELECT * FROM met LIMIT 10;

SELECT COUNT(*) FROM met WHERE department ="American Decorative Arts";

SELECT COUNT(*) FROM met
WHERE category LIKE "%celery%";

SELECT title, medium FROM met
ORDER BY date ASC
LIMIT 1;

SELECT country, COUNT(*) FROM met
WHERE country IS NOT NULL
GROUP BY country
ORDER BY 2 DESC
LIMIT 10;

SELECT category, COUNT(*) FROM met
GROUP BY category
HAVING COUNT(*) > 100
ORDER BY 2 DESC;

SELECT CASE
WHEN medium LIKE "%gold%" THEN "Gold"
WHEN medium LIKE "%silver%" THEN "Silver"
ELSE "not shiny"
END AS metals, COUNT(*) FROM met
WHERE NOT metals = "not shiny"
GROUP BY 1
ORDER BY 2 DESC;
