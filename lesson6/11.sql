SELECT country,a_market,date,adj_close,volume
FROM a_stock JOIN a_market ON a_stock.name = a_market.name
WHERE country = '台灣';

SELECT country,a_market,date,adj_close,volume
FROM a_stock JOIN a_market ON a_stock.name = a_market.name
WHERE country = '台灣' and date =(
	SELECT MAX(date)
	FROM a_stock
);

SELECT country,a_market.name,date,adj_close,volume
FROM a_stock JOIN a_market ON a_stock.name = a_market.name
WHERE country = '台灣' and (date BETWEEN '2024-01-01' AND '2024-12-31');

