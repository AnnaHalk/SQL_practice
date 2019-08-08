-- Найдите названия кораблей с орудиями калибра 16 дюймов (учесть корабли из таблицы Outcomes).


SELECT name FROM Ships
INNER JOIN
Classes ON Classes.class = Ships.class
WHERE bore = 16
UNION
SELECT ship FROM Outcomes
INNER JOIN
Classes ON Classes.class = Outcomes.ship
WHERE bore = 16
