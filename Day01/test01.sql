use web_jinwoo;

CREATE TABLE `score` (
	`id` int NOT NULL AUTO_INCREMENT primary key,
    `name` varchar(8) NOT NULL,
    `year` decimal(4, 0) NOT NULL,
    `term` enum('중간고사', '기말고사') NOT NULL,
    `title` varchar(4) NOT NULL,
    `score` tinyint NOT NULL,
    `createdAt` timestamp DEFAULT CURRENT_TIMESTAMP,
    `updatedAt` timestamp DEFAULT CURRENT_TIMESTAMP
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;




    