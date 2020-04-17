SELECT * FROM transactions;

SELECT SUM(money_in) FROM transactions;

SELECT SUM(money_out) FROM transactions;



SELECT(1.0*(SELECT COUNT(money_in) FROM transactions WHERE currency = "BIT"))/(SELECT COUNT(money_in) FROM transactions);

SELECT MAX(money_in), MAX(money_out) FROM transactions;

SELECT AVG(money_in) FROM transactions
WHERE currency ="ETH";

SELECT date, ROUND(AVG(money_in)) AS money_in, ROUND(AVG(money_out)) AS money_out FROM transactions
GROUP BY date;
