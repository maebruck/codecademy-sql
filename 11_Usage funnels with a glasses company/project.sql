SELECT * FROM survey
LIMIT 10;

SELECT question, COUNT(*) FROM survey
GROUP BY 1
ORDER BY 1;

/* 1 -> 2:  5% drop out
   2 -> 3: 20% drop out
   3 -> 4:  5% drop out
   4 -> 5: 25% drop out */

SELECT * FROM quiz
LIMIT 5;

SELECT * FROM home_try_on
LIMIT 5;

SELECT * FROM purchase
LIMIT 5;

SELECT
DISTINCT q.user_id AS user_id,
h.number_of_pairs IS NOT NULL AS is_home_try_on,
CASE
 WHEN h.number_of_pairs == "5 pairs" THEN 5
 WHEN h.number_of_pairs == "3 pairs" THEN 3
 ELSE NULL
END AS number_of_pairs,
p.product_id IS NOT NULL AS is_purchase
FROM quiz AS q
LEFT JOIN home_try_on AS h
ON q.user_id == h.user_id
LEFT JOIN purchase AS p
ON q.user_id == p.user_id
LIMIT 10;

SELECT
DISTINCT q.user_id AS user_id,
p.style AS style,
CASE
 WHEN h.number_of_pairs == "5 pairs" THEN 5
 WHEN h.number_of_pairs == "3 pairs" THEN 3
 ELSE NULL
END AS number_of_pairs,
COUNT(*),
SUM(p.product_id IS NOT NULL) AS amount_purchased,
ROUND(AVG(p.price),2) AS average_price
FROM quiz AS q
LEFT JOIN home_try_on AS h
ON q.user_id == h.user_id
LEFT JOIN purchase AS p
ON q.user_id == p.user_id
GROUP BY 3,2
LIMIT 10;

/* people seem to be more likely to buy when they get 5 glasses instead of 3. The average price seems unchanged of whether they get more glasses */
