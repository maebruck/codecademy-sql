SELECT title, score FROM hacker_news ORDER BY score DESC LIMIT 5;

SELECT SUM(score) FROM hacker_news;

SELECT user, SUM(score) FROM hacker_news GROUP BY user HAVING SUM(score) > 200 ORDER BY 2 DESC;

SELECT (517+309+304+282.0)/(SELECT SUM(score) FROM hacker_news);

SELECT user, COUNT(*) FROM hacker_news WHERE url LIKE "%www.youtube.com/watch?v=dQw4w9WgXcQ" GROUP BY 1 ORDER BY 2 DESC;

SELECT CASE
  WHEN url LIKE "%github%" THEN "GitHub"
  WHEN url LIKE "%medium%" THEN "Medium"
  WHEN url LIKE "%nytimes%" THEN "New York Times"
  ELSE "other"
  END AS "source", COUNT(*)
FROM hacker_news GROUP BY 1;

SELECT timestamp, strftime("%H", timestamp)
FROM hacker_news GROUP BY 1 LIMIT 20;

SELECT strftime("%H", timestamp) AS "time", ROUND(AVG(score),1) AS "avg_score", COUNT(*) AS "number" FROM hacker_news WHERE time IS NOT NULL GROUP BY 1 ORDER BY 1;
