CREATE TABLE `realtor` (
	`id` int NOT NULL AUTO_INCREMENT primary key,
    `office` varchar(16) NOT NULL,
    `phoneNumber` varchar(32) NOT NULL,
    `address` varchar(16) NOT NULL,
    `grad` enum('안심중개사', '일반중개사') NOT NULL,
    `createdAt` timestamp DEFAULT CURRENT_TIMESTAMP,
    `updatedAt` timestamp DEFAULT CURRENT_TIMESTAMP
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

CREATE TABLE `realEstate` (
	`id` int NOT NULL AUTO_INCREMENT primary key,
    `realtorId` tinyint NOT NULL,
    `address` varchar(64) NOT NULL,
    `area` int UNSIGNED,
    `type` enum('전세', '월세', '매매')  NOT NULL,
    `price` int UNSIGNED NOT NULL,
    `rentPrice` int,
    `createdAt` timestamp DEFAULT CURRENT_TIMESTAMP,
    `updatedAt` timestamp DEFAULT CURRENT_TIMESTAMP
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

INSERT INTO `realtor` 
(`office`, `phoneNumber`, `address`, `grad`, `createdAt`, `updatedAt`)
VALUES 
('황금 부동산', '02-300-2000', '서울시 서초구', '안심중개사', now(), now()),
('대박 공인중개사', '02-000-7777', '서울시 동작구', '일반중개사', now(), now());

INSERT INTO `realEstate` 
(`realtorId`, `address`, `area`, `type`, `price`, `rentPrice`, `createdAt`, `updatedAt`)
VALUES 
(1, '레미얀 레이크 아파트 301동 905호', 84, '전세', 40000, NULL, now(), now()),
(2, '레알편한세상 시티 505동 101호', 110, '매매', 120000, NULL, now(), now()),
(1, '롱데캐슬 101동 402호', 87, '월세', 20000, 200, now(), now()),
(1, '슼뷰 오피스텔 1210호', 55, '월세', 10000, 100, now(), now()),
(2, '푸르지용 리버 203동 804호	', 123, '매매', 170000, NULL, now(), now());

SELECT `address`, `price`, `rentPrice` FROM `realEstate` WHERE `realtorId` = 1 AND `type` = '월세';

CREATE TABLE `option` (
	`id` int NOT NULL AUTO_INCREMENT primary key,
    `realEstateId` int NOT NULL,
    `option` varchar(8), 
	`createdAt` timestamp DEFAULT CURRENT_TIMESTAMP,
    `updatedAt` timestamp DEFAULT CURRENT_TIMESTAMP
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

INSERT INTO `option` 
(`realEstateId`, `option`, `createdAt`, `updatedAt`)
VALUES
(1, '냉장고', now(), now()),
(2, '세탁기', now(), now());

SELECT * FROM `option` WHERE `realEstateId` = 1; 