-- Для каждого корабля, участвовавшего в сражении при Гвадалканале (Guadalcanal),
-- вывести название, водоизмещение и число орудий.


SELECT ship, displacement, numGuns FROM
Outcomes
LEFT JOIN Ships ON Outcomes.ship = Ships.name
LEFT JOIN Classes ON Ships.class = Classes.class OR Classes.class = Outcomes.ship
WHERE battle = 'Guadalcanal'


