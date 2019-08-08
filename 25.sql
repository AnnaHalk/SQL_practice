-- Найдите производителей принтеров, которые производят ПК с наименьшим объемом RAM и с самым быстрым процессором среди всех ПК, имеющих наименьший объем RAM.
-- Вывести: Maker


WITH lowram (maker, model, speed, ram) AS
(SELECT maker, PC.model, speed, ram FROM PC
INNER JOIN Product ON Product.model = PC.model
WHERE ram =(SELECT MIN(ram) FROM PC) AND maker IN (SELECT maker FROM Product WHERE type = 'Printer'))
SELECT DISTINCT maker FROM lowram
WHERE speed = (SELECT MAX(speed) FROM lowram)