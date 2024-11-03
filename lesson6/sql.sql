INSERT INTO a_market values ('^TWII','台灣')
ON CONFLICT DO NOTHING;


SELECT * 
FROM a_market;

DELETE FROM a_market;


INSERT INTO a_stock(date,open,high,low,close,adj_close,volume,name) 
values('1997-07-08',9094.26953125,9124.2998046875,8988.1298828125,8996.7197265625,8996.6865234375,0,'^TWII');

SELECT *
FROM a_stock;

DELETE FROM a_stock;