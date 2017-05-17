LOAD DATA LOCAL INFILE '~/Documents/db_project/obecnosci_data.txt'
INTO TABLE Obecnosc FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n';
