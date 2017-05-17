LOAD DATA LOCAL INFILE '~/Documents/db_project/student_oceny.txt' -- wczytuje plik txt z dannymi 
INTO TABLE Oceny FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n';
