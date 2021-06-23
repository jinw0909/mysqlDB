CREATE database java;
use java;
CREATE TABLE `weatherhistory` (
	`id` int NOT NULL AUTO_INCREMENT primary key,
	`date` TIMESTAMP NOT NULL,
	`weather`  varchar(8) NOT NULL,
	`temperatures` double NOT NULL,
	`precipitation` double NOT NULL,
	`microDust` enum('좋음', '나쁨', '보통', '최악'),
	`windSpeed` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

# DROP TABLE `weatherhistory`;

INSERT INTO `weatherhistory` (`date`, `weather`, `temperatures`, `precipitation`, `microDust`, `windspeed`)
VALUES ('2015-07-01', '비', 21.9, 83.5, '보통', 2.9);

# 가장 높은 기온
SELECT `date`, `weather`, `temperatures`
FROM `weatherhistory`
ORDER BY `temperatures` DESC LIMIT 1;

# 날씨 카운트
SELECT `weather`, count(1) AS count FROM `weatherhistory`
GROUP BY `weather` ORDER BY count DESC;

# 미세먼지와 강수량
SELECT `microDust`, AVG(`precipitation`) AS precipitation FROM `weatherhistory`
GROUP BY `microDust` HAVING preciptiation > 0;

# 미세먼지와 풍속
SELECT `microDust`, AVG(`windSpeed`) AS windSpeed FROM `weatherhistory`
GROUP BY `microDust` HAVING windSpeed >= 4;
