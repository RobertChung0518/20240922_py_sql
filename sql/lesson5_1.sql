SELECT *
FROM stations;

SELECT *
FROM station_in_out;

/*全省各站點2022年進站總人數*/
SELECT stationname, SUM(gateincomingcnt)
FROM stations JOIN station_in_out ON stationcode = stacode
WHERE EXTRACT (YEAR FROM date) = 2022
GROUP BY stationname
ORDER BY sum DESC;

/*全省各站點2022年進站總人數大於5佰萬人的站點*/

SELECT stationname, SUM(gateincomingcnt)
FROM stations JOIN station_in_out ON stationcode = stacode
WHERE EXTRACT (YEAR FROM date) = 2022
GROUP BY stationname
HAVING sum(gateincomingcnt) >= 5000000
ORDER BY sum DESC;

/*基隆火車站2020年,每月份進站人數*/

SELECT stationname, TO_CHAR(date, 'YYYY-MM'), SUM(gateincomingcnt)
FROM stations JOIN station_in_out ON stationcode = stacode
WHERE EXTRACT (YEAR FROM date) = 2020 AND stationname = '基隆'
GROUP BY stationname,to_char;


/*基隆火車站2020年,每月份進站人數,由多至少*/

SELECT stationname, TO_CHAR(date, 'YYYY-MM'), SUM(gateincomingcnt)
FROM stations JOIN station_in_out ON stationcode = stacode
WHERE EXTRACT (YEAR FROM date) = 2020 AND stationname = '基隆'
GROUP BY stationname,to_char
ORDER BY sum DESC;

/*基隆火車站2020,2021,2022,每年進站人數*/

SELECT stationname, EXTRACT (YEAR FROM date), SUM(gateincomingcnt)
FROM stations JOIN station_in_out ON stationcode = stacode
WHERE EXTRACT (YEAR FROM date) IN(2020,2021,2022) AND stationname = '基隆'
GROUP BY stationname,extract;

/*基隆火車站,臺北火車站2020,2021,2022,每年進站人數*/

SELECT stationname, EXTRACT (YEAR FROM date), SUM(gateincomingcnt)
FROM stations JOIN station_in_out ON stationcode = stacode
WHERE EXTRACT (YEAR FROM date) IN(2020,2021,2022) AND stationname IN ('基隆','臺北')
GROUP BY stationname,extract;

/*進站人數最多的一筆(請使用SubQuery)*/

SELECT stationname, gateincomingcnt
FROM stations JOIN station_in_out ON stationcode = stacode
WHERE gateincomingcnt = (
	SELECT MAX (gateincomingcnt)
	FROM station_in_out
);

/*各站點進站人數最多的一筆*/

SELECT name,date,gateincomingcnt
FROM stations JOIN station_in_out ON stationcode = stacode
WHERE (stationname,gateincomingcnt) IN (
	SELECT stationname AS 站名,MAX(gateincomingcnt) AS 最多人數
	FROM stations JOIN station_in_out ON stationcode = stacode
	GROUP BY 站名
)
ORDER BY gateincomingcnt DESC;

SELECT stationname AS 站名,MAX(gateincomingcnt) AS 最多人數
FROM stations JOIN station_in_out ON stationcode = stacode
GROUP BY 站名;