
# DELETE 쿼리

# id가 1인 데이터 삭제하기
SELECT * FROM `user` WHERE id = 1;
DELETE FROM `user` WHERE id = 1;
DELETE FROM `user`;

INSERT INTO `user`
(`name`, `yyyymmdd`, `hobby`, `introduce`, `createdAt`, `updatedAt`, `email`)
VALUES ('장진우', '19890909', '독서, 노래, 영화', '안녕하세요 \n 반가워요', now(), now(), 'jinw0909@gmail.com');

# id 초기화 삭제
TRUNCATE TABLE `user`;
