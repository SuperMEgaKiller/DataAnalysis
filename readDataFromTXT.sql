LOAD DATA LOCAL INFILE '~/Documents/db_project/db/kursy_data.txt' -- read Kursy from kursy_data.txt
INTO TABLE Kursy FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n';

LOAD DATA LOCAL INFILE '~/Documents/db_project/db/student_data.txt' -- read Student from student_data.txt
INTO TABLE Student FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n';

LOAD DATA LOCAL INFILE '~/Documents/db_project/db/obecnosci_data.txt' -- read Obecnosci from obecnosci_data.txt
INTO TABLE Obecnosc FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n';

LOAD DATA LOCAL INFILE '~/Documents/db_project/db/student_oceny.txt' -- read Oceny from student_oceny.txt
INTO TABLE Oceny FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n';
