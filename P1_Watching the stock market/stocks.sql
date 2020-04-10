-- Manipulation: Collect data on your pick of 5 stocks
-- •	Create a table called stocks, where you will be inserting your data.
CREATE TABLE stocks (
symbol TEXT,
name TEXT,
datetime DATETIME,
price DECIMAL(20,2)
);
-- used random data.
INSERT INTO stocks
VALUES ("AAPL", "Apple Inc.", "2019-05-01 18:00:00", 210.52),
("AAPL", "Apple Inc.", "2019-06-03 18:00:00", 173.30),
("AAPL", "Apple Inc.", "2019-07-01 18:00:00", 184.23),
("AAPL", "Apple Inc.", "2019-08-01 18:00:00", 254.23),
("AAPL", "Apple Inc.", "2019-09-01 18:00:00", 270.32),
("AAPL", "Apple Inc.", "2019-10-01 18:00:00", 285.12),
("AAPL", "Apple Inc.", "2019-11-01 18:00:00", 295.93),
("AAPL", "Apple Inc.", "2019-12-01 18:00:00", 318.92),
("AAPL", "Apple Inc.", "2020-01-01 18:00:00", 300.35),
("AAPL", "Apple Inc.", "2020-02-01 18:00:00", 354.22),
("AAPL", "Apple Inc.", "2020-03-01 18:00:00", 302.23),
("AAPL", "Apple Inc.", "2020-04-01 18:00:00", 270.35),
("GOOG", "Alphabet Inc.", "2019-05-01 18:00:00", 1210.52),
("GOOG", "Alphabet Inc.", "2019-06-03 18:00:00", 1173.30),
("GOOG", "Alphabet Inc.", "2019-07-01 18:00:00", 1184.23),
("GOOG", "Alphabet Inc.", "2019-08-01 18:00:00", 1154.23),
("GOOG", "Alphabet Inc.", "2019-09-01 18:00:00", 1270.32),
("GOOG", "Alphabet Inc.", "2019-10-01 18:00:00", 1195.12),
("GOOG", "Alphabet Inc.", "2019-11-01 18:00:00", 1232.93),
("GOOG", "Alphabet Inc.", "2019-12-01 18:00:00", 1212.92),
("GOOG", "Alphabet Inc.", "2020-01-01 18:00:00", 1300.35),
("GOOG", "Alphabet Inc.", "2020-02-01 18:00:00", 1354.22),
("GOOG", "Alphabet Inc.", "2020-03-01 18:00:00", 1102.23),
("GOOG", "Alphabet Inc.", "2020-04-01 18:00:00", 1270.35),
("MSFT", "Microsoft Corp.", "2019-05-01 18:00:00", 110.52),
("MSFT", "Microsoft Corp.", "2019-06-03 18:00:00", 173.30),
("MSFT", "Microsoft Corp.", "2019-07-01 18:00:00", 184.23),
("MSFT", "Microsoft Corp.", "2019-08-01 18:00:00", 154.23),
("MSFT", "Microsoft Corp.", "2019-09-01 18:00:00", 170.32),
("MSFT", "Microsoft Corp.", "2019-10-01 18:00:00", 195.12),
("MSFT", "Microsoft Corp.", "2019-11-01 18:00:00", 132.93),
("MSFT", "Microsoft Corp.", "2019-12-01 18:00:00", 112.92),
("MSFT", "Microsoft Corp.", "2020-01-01 18:00:00", 100.35),
("MSFT", "Microsoft Corp.", "2020-02-01 18:00:00", 154.22),
("MSFT", "Microsoft Corp.", "2020-03-01 18:00:00", 102.23),
("MSFT", "Microsoft Corp.", "2020-04-01 18:00:00", 170.35);

-- Queries: Perform basic analysis on the data and identify trends.
-- •	What are the distinct stocks in the table?
SELECT DISTINCT symbol FROM stocks;
-- •	Query all data for a single stock. Do you notice any overall trends?
SELECT * FROM stocks WHERE symbol = "AAPL";
-- firstly increase, drop after february
-- •	Which rows have a price above 100? between 40 to 50, etc?
SELECT * FROM stocks WHERE price > 200;
SELECT COUNT(*) FROM stocks WHERE price > 200;
-- •	Sort the table by price. What are the minimum and maximum prices?
SELECT *, MIN(price) AS min FROM stocks;
SELECT *, MAX(price) AS max FROM stocks;
SELECT * FROM stocks ORDER BY price;
