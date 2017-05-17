LOAD DATA LOCAL INFILE '~/Documents/db_project/student_oceny.txt'
INTO TABLE Oceny FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n';
