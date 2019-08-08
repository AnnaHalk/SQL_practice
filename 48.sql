-- Найдите классы кораблей, в которых хотя бы один корабль был потоплен в сражении.


SELECT Classes.class FROM Classes
INNER JOIN Ships ON Classes.class = Ships.class
INNER JOIN Outcomes ON Ships.name = Outcomes.ship
WHERE result = 'sunk'
UNION
SELECT Classes.class FROM Classes
INNER JOIN Outcomes ON Classes.class = Outcomes.ship
WHERE result = 'sunk'


