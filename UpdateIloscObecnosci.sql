INSERT INTO Ilosc_obecnosci (id, nr_obecnsci)  -- Obliczanie ilosci
SELECT student_id, COUNT(data) AS nr_obecnosci -- obecnosci dla kazdego
FROM Obecnosc GROUP BY student_id;             -- studenta

INSERT INTO Ilosc_obecnosci (id)         -- Dodanie wszystkich studentow
SELECT id FROM Student WHERE Student.id  -- bez obecnosci uswienie
NOT IN(SELECT student_id FROM Obecnosc); -- obecnosci na 0
