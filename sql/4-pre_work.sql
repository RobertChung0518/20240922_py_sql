CREATE TABLE IF NOT EXISTS stations(
	station_id SERIAL PRIMARY KEY,
	date DATE,
	stacode VARCHAR(10),
	gateInComingCnt VARCHAR(50),
	gateOutGoingCnt VARCHAR(50)
	);

SELECT *
FROM stationcode;

CREATE TABLE IF NOT EXISTS stationcode(
	station_id SERIAL PRIMARY KEY,
	stationcode VARCHAR(5) NOT NULL UNIQUE,
	stationName VARCHAR(10) UNIQUE,
	name VARCHAR(50),
	stationAddrTw VARCHAR(50),
	stationTel VARCHAR(50),
	gps VARCHAR(20),
	haveBike BOOLEAN
	);

SELECT *
FROM stations;

/*全省各站點2022年進站總人數*/

SELECT stacode, gateincomingcnt
FROM stations
WHERE stacode = '900';

SELECT stacode, SUM(gateincomingcnt)
FROM stations
GROUP BY stacode;
