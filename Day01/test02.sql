CREATE TABLE `review` (
    `id` int NOT NULL AUTO_INCREMENT primary key,
    `store` varchar(8) NOT NULL,
    `menu` varchar(8) NOT NULL,
    `point` decimal(2,1) DEFAULT 3.5,
    `review` varchar(256),
    `createdAt` timestamp DEFAULT CURRENT_TIMESTAMP,
    `updatedAt` timestamp DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

ALTER TABLE `review` ADD COLUMN `userName` varchar(32) NOT NULL AFTER `menu`;

ALTER TABLE `review` MODIFY COLUMN `menu` varchar(32) NOT NULL;

ALTER TABLE `review` CHANGE COLUMN `store` `storeName` varchar(32) NOT NULL;

# 1. 리뷰 등록

INSERT INTO `review` (
    `storeName`, 
    `menu`,
    `userName`,
    `point`,
    `review`, 
    `createdAt`, 
    `updatedAt`
) VALUES (
    '버거킹',
    '와퍼세트', 
    '이정재',
    4.0,
    '배달이 빨랐어요. 역시 와퍼 맛있네요.', 
    now(),
    now()
), 
(
    '교촌치킨',
    '오리지날 콤보', 
    '이병헌',
    4.5,
    '콤보는 항상 진리입니다. ',
    now(),
    now()
), 
(
    '원조 곱창볶음',
    '야채곱창볶음', 
    '맛있으면짖는개',
    4.0,
    '왈왈왈왈!! 왈왈!!!', 
    now(),
    now()
);


# 2. 별점 등록 

INSERT INTO `review` (
    `storeName`, 
    `menu`,
    `userName`,
    `point`,
    `createdAt`, 
    `updatedAt`
)
VALUES (
    '안동찜닭',
    '찜닭(중)', 
    '강동원',
    5.0,
    now(),
    now()
), 
(
    '교촌치킨',
    '핫 콤보', 
    '이정재',
    4.5,
    now(),
    now()
), 
(
    'BHC',
    '뿌링클', 
    '전지현',
    4.5,
    now(),
    now()
);