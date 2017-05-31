CREATE TABLE NrObc(
       id VARCHAR(6) NOT NULL,
       ocena FLOAT NOT NULL DEFAULT 2.0,
       course_id VARCHAR(10) NOT NULL,
       nr_obecnosci INT(10) NOT NULL DEFAULT 0)
       ENGINE=INNODB
       DEFAULT CHARACTER SET = utf8;
