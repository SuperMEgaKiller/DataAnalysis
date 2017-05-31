INSERT INTO Ilosc_obecnosci (id, nr_obecnsci)  -- Obliczanie ilosci
SELECT student_id, COUNT(data) AS nr_obecnosci -- obecnosci dla kazdego
FROM Obecnosc GROUP BY student_id;             -- studenta

INSERT INTO Ilosc_obecnosci (id)         -- Dodanie wszystkich studentow
SELECT id FROM Student WHERE Student.id  -- bez obecnosci uswienie
NOT IN(SELECT student_id FROM Obecnosc); -- obecnosci na 0

SELECT id FROM Student WHERE Student.id NOT IN(SELECT id FROM NrObc);

SELECT student_id,count(data) FROM Obecnosc
WHERE course_id="AREK00018W"
GROUP BY student_id;

insert into NrObc (id,ocena,course_id)
select Student.id, Oceny.ocena, Oceny.course_id
from Student inner join Oceny on Student.id=Oceny.student_id;
