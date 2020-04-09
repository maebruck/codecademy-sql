-- Manipulation: Collect data on your pick of 5 stocks
-- •	Create a table called stocks, where you will be inserting your data.
CREATE TABLE stocks (
symbol TEXT,
name TEXT,
datetime DATETIME,
price DECIMAL(20,2)
);

INSERT INTO stocks
VALUES ("AAPL", "Apple Inc.", "2020-01-01 18:00:00", 300.35),
("AAPL", "Apple Inc.", "2020-01-01 18:00:00", 300.35);

-- o	Hint: See here 156 for a review of the CREATE TABLE syntax. What data type 116 should each field be?
-- •	The stocks table should have a column for symbol, name, datetime, and price.
-- •	Collect your data! Choose 3 times throughout the day to document the price of each stock and continue for at least 1 week. You can do this moving forward, or just take a retroactive look at the stock market by taking data historically from regular intervals (e.g. the first of the month for the last six months).
-- o	Hint: See here 80 for a review of the INSERT INTO syntax. When inserting the datetime, use the standard format ‘yyyy-mm-dd hh:mm:ss’. Use the strftime() 96 function to help you get the datetime of ‘now’.
-- Queries: Perform basic analysis on the data and identify trends.
-- •	What are the distinct stocks in the table?
-- •	Query all data for a single stock. Do you notice any overall trends?
-- •	Which rows have a price above 100? between 40 to 50, etc?
-- •	Sort the table by price. What are the minimum and maximum prices?
