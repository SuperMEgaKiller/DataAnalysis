DELIMITER //

DROP PROCEDURE IF EXISTS countPrzedzial //

CREATE PROCEDURE 
  countPrzedzial()
BEGIN  
       INSERT INTO Analyse(przedzial,srednia)
       VALUES("0-3",(SELECT SUM(ocena)/COUNT(ocena) AS srednia
       FROM NrObc
       WHERE nr_obecnosci >= 0 AND nr_obecnosci <=3));
       
       INSERT INTO Analyse(przedzial,srednia)
       VALUES("4-6",(SELECT SUM(ocena)/COUNT(ocena) AS srednia
       FROM NrObc
       WHERE nr_obecnosci >= 4 AND nr_obecnosci <=6));

       INSERT INTO Analyse(przedzial,srednia)
       VALUES("7-9",(SELECT SUM(ocena)/COUNT(ocena) AS srednia
       FROM NrObc
       WHERE nr_obecnosci >= 7 AND nr_obecnosci <=9));

       INSERT INTO Analyse(przedzial,srednia)
       VALUES("10-12",(SELECT SUM(ocena)/COUNT(ocena) AS srednia
       FROM NrObc
       WHERE nr_obecnosci >= 10 AND nr_obecnosci <= 12));

       INSERT INTO Analyse(przedzial,srednia)
       VALUES("13-15",(SELECT SUM(ocena)/COUNT(ocena) AS srednia
       FROM NrObc
       WHERE nr_obecnosci >= 13 AND nr_obecnosci <= 15));

END 
//

DELIMITER ;
