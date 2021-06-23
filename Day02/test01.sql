DROP TABLE `score`;

CREATE TABLE `score` (
    `id` int NOT NULL AUTO_INCREMENT primary key,
    `name` varchar(16) NOT NULL,
    `year` decimal(4, 0) NOT NULL,
    `semester` enum('1', '2') NOT NULL, 
    `term` enum('중간고사', '기말고사') NOT NULL,
    `subject` varchar(5) NOT NULL,
    `score` tinyint NOT NULL,
    `createdAt` timestamp DEFAULT CURRENT_TIMESTAMP,
    `updatedAt` timestamp DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



INSERT INTO `score` (
	`name`,
    `year`,
    `semester`,
    `term`,
    `subject`,
    `score`,
    `createdAt`,
    `updatedAt`
) VALUE (
	'유재석',
    2020,
    '1',
    '중간고사',
    '국어',
    80,
    now(),
    now()
);

INSERT INTO `score` (
	`name`,
    `year`,
    `semester`,
    `term`,
    `subject`,
    `score`,
    `createdAt`,
    `updatedAt`
) VALUE (
	'유재석',
    2020,
    '1',
    '기말고사',
    '영어',
    90,
    now(),
    now()
);

INSERT INTO `score` (
	`name`,
    `year`,
    `semester`,
    `term`,
    `subject`,
    `score`,
    `createdAt`,
    `updatedAt`
) VALUE (
	'유재석',
    2020,
    '1',
    '중간고사',
    '수학',
    95,
    now(),
    now()
);

# 한번에 여러개 입력

INSERT INTO `score` (
	`name`,
    `year`,
    `semester`,
    `term`,
    `subject`,
    `score`,
    `createdAt`,
    `updatedAt`
) VALUES (
	'조세호',
    2020,
    '1',
    '중간고사',
    '국어',
    80,
    now(),
    now()
), (
	'조세호',
    2020,
    '1',
    '중간고사',
    '국어',
    80,
    now(),
    now()
), (
	'조세호',
    2020,
    '1',
    '기말고사',
    '국어',
    80,
    now(),
    now()
);