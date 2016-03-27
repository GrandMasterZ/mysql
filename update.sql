DELETE FROM Books Where authorId IS NULL;

INSERT INTO Books VALUES('NULL', 8, 'Kliudžiau', 1998);
INSERT INTO Books VALUES('NULL', 9, 'Altorius', 1978);
INSERT INTO Books VALUES('NULL', 10, 'Laimės Žiburys', 1956);
INSERT INTO Books VALUES('NULL', 11, 'Užklydau', 1987);

ALTER TABLE Books ADD genreId int;

CREATE TABLE IF NOT EXISTS Genre(genreId int NOT NULL PRIMARY KEY AUTO_INCREMENT, title varchar(20));

ALTER TABLE Books DROP COLUMN authorId;

CREATE TABLE IF NOT EXISTS Authors_Books(authorId int,bookId int,PRIMARY KEY(authorId,bookId));

INSERT INTO Authors_Books Values(1,7);
INSERT INTO Authors_Books Values(2,8);
INSERT INTO Authors_Books Values(7,1);
INSERT INTO Authors_Books Values(3,4);
INSERT INTO Authors_Books Values(5,7);
INSERT INTO Authors_Books Values(4,6);
INSERT INTO Authors_Books Values(7,9);

ALTER DATABASE Books CHARACTER SET utf8 COLLATE utf8_lithuanian_ci;


