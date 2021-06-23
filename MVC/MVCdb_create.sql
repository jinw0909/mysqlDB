CREATE database `MVC`;
USE `MVC`;
CREATE TABLE `hr` (
    `id` int NOT NULL AUTO_INCREMENT primary key,
    `hr_name` varchar(12) NOT NULL,
    `hr_department` varchar(12) NOT NULL,
    `hr_position` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `hr_department` (
    `department_idx` int NOT NULL AUTO_INCREMENT primary key,
    `department_name` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `hr_position` (
    `position_idx` int NOT NULL AUTO_INCREMENT primary key,
    `position_name` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO hr (hr_name, hr_department, hr_position) VALUES ("피카츄", 1, 2);
INSERT INTO hr (hr_name, hr_department, hr_position) VALUES ("라이츄", 2, 3);
INSERT INTO hr (hr_name, hr_department, hr_position) VALUES ("파이리", 3, 3);
INSERT INTO hr (hr_name, hr_department, hr_position) VALUES ("꼬부기", 4, 1);
INSERT INTO hr (hr_name, hr_department, hr_position) VALUES ("피죤투", 1, 1);
INSERT INTO hr (hr_name, hr_department, hr_position) VALUES ("또가스", 1, 1);
INSERT INTO hr (hr_name, hr_department, hr_position) VALUES ("거북왕", 1, 1);

INSERT INTO hr_department (department_name) VALUES ("기획팀");
INSERT INTO hr_department (department_name) VALUES ("재무팀");
INSERT INTO hr_department (department_name) VALUES ("디자인팀");
INSERT INTO hr_department (department_name) VALUES ("개발팀");
INSERT INTO hr_department (department_name) VALUES ("인사팀");

INSERT INTO hr_position (position_name) VALUES ("사원");
INSERT INTO hr_position (position_name) VALUES ("주임");
INSERT INTO hr_position (position_name) VALUES ("대리");
INSERT INTO hr_position (position_name) VALUES ("과장");
INSERT INTO hr_position (position_name) VALUES ("차장");
INSERT INTO hr_position (position_name) VALUES ("부장");



