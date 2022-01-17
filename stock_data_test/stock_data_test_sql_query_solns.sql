-- select all records from tables
SELECT * FROM stock;
SELECT * FROM closing_price;

-- for each ticker, get record count of prices
SELECT ticker, count(*) FROM closing_price
GROUP BY ticker;

-- for each ticker, get earliest and latest price dates
SELECT ticker, 
       min(close_date) as min_date,
       max(close_date) as max_date
FROM closing_price
GROUP BY ticker;

