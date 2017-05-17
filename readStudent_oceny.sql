LOAD DATA LOCAL INFILE '~/Documents/db_project/student_oceny.txt' -- wczytuje plik txt z dannymi u mnie onie sa w takiej sciezce
INTO TABLE Oceny FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n';
