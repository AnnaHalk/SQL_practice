-- Найдите сражения, в которых участвовали корабли класса Kongo из таблицы Ships.


SELECT DISTINCT battle FROM Outcomes
INNER JOIN Ships
ON ship = name
WHERE Ships.class = 'Kongo'



