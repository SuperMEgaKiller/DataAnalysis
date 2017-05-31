DELIMITER //

DROP PROCEDURE IF EXISTS countObecnoscFor //

CREATE PROCEDURE 
  countObecnoscFor( crs_id VARCHAR(10) )
BEGIN  

   INSERT INTO NrObc (id, nr_obecnosci, course_id)                 -- wstawiamy do tabeli
   SELECT student_id AS id, COUNT(data) AS nr_obecnosci, course_id -- id studena ilosc obecnosci i id kursu
   FROM Obecnosc                                                   -- dla ktorego sa te danne  
   WHERE course_id = crs_id
   GROUP BY student_id;

   UPDATE NrObc AS n, Oceny AS o -- wstawiamy oceny
   SET n.ocena = o.ocena
   WHERE n.id = o.student_id AND n.course_id=o.course_id;

END 
//

DELIMITER ;
