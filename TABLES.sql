CREATE TABLE Student(
       id VARCHAR(6) NOT NULL PRIMARY KEY,
       nazwisko VARCHAR(20) NOT NULL,
       imie VARCHAR(20) NOT NULL)
       ENGINE=INNODB
       DEFAULT CHARACTER SET = utf8;

CREATE TABLE Kursy(
       course_id VARCHAR(10) NOT NULL PRIMARY KEY,
       course_name VARCHAR(255) NOT NULL,
       prowadzacy VARCHAR(255) NOT NULL)
       ENGINE=INNODB
       DEFAULT CHARACTER SET = utf8;

CREATE TABLE Obecnosc(
       course_id VARCHAR(10) NOT NULL,
       data VARCHAR(10) NOT NULL,
       student_id VARCHAR(6) NOT NULL,
       FOREIGN KEY (student_id) REFERENCES Student(id)
       ON UPDATE CASCADE
       ON DELETE CASCADE,
       FOREIGN KEY (course_id) REFERENCES Kursy(course_id)
       ON UPDATE CASCADE
       ON DELETE CASCADE)
       ENGINE=INNODB
       DEFAULT CHARACTER SET = utf8;

CREATE TABLE Oceny(
       student_id VARCHAR(6) NOT NULL,
       course_id VARCHAR(10) NOT NULL,
       ocena FLOAT NOT NULL,
       FOREIGN KEY (student_id) REFERENCES Student(id)
       ON UPDATE CASCADE
       ON DELETE CASCADE,
       FOREIGN KEY (course_id) REFERENCES Kursy(course_id)
       ON UPDATE CASCADE
       ON DELETE CASCADE)
       ENGINE=INNODB
       DEFAULT CHARACTER SET = utf8;
