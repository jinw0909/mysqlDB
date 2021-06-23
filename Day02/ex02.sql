SELECT * FROM `user`;

SELECT `name`, `yyyymmdd`, `hobby`, `introduce`, `email`
FROM `user`;

# 별명 붙이기alter
# 테이블명 별명 붙이기
SELECT * FROM `user` AS `person`;

# 컬럼 이름 별명 붙이기
SELECT `name`, `yyyymmdd` AS `birth`, `hobby`, `introduce`
FROM `user`;

# 중복 제거
SELECT DISTINCT `name` FROM `user`;

# 데이터 개수 세기
SELECT count(*) AS `count` FROM `user`;
SELECT count(1) AS `count` FROM `user`;

# 조건에 맞는 데이터 가져오기
SELECT * FROM `user` WHERE `id` = 3;

# 이름이 김바다인 사용자의 생년월일 조회
SELECT `yyyymmdd` FROM `user` WHERE `name` = '김바다';

# 이름이 김바다가 아닌 사용자의 데이터 조회
SELECT * FROM `user` WHERE `name` != '김바다';

# 날짜 비교
# 2021-06-17 이후에 입력된 내용 출력
SELECT * FROM `user` WHERE `createdAt` > '2021-06-16 23:59:59';

# 개수 조회
SELECT count(*) FROM `user` WHERE `name` = '김바다';

# NULL 조회
SELECT * FROM `user` WHERE `introduce` is NULL;
SELECT * FROM `user` WHERE `introduce` is not NULL;

# 여러 조건 데이터 조회
# id 가 3, 4, 5, 6
SELECT * FROM `user`
WHERE `id` in (3, 4, 5, 6);

# 여러 조건
# id가 3이거나 5인 데이터 조회
SELECT * FROM `user` WHERE `id` = 3 OR `id` = 5;

# 이름이 김바다이면서 취미가 사냥하기인 데이터 조회
SELECT * FROM `user` WHERE `name` = '김바다' AND `hobby` = '사냥하기';

