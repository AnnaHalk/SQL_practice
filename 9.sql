-- Найдите производителей ПК с процессором не менее 450 Мгц.
-- Вывести: Maker


SELECT DISTINCT maker FROM Product
INNER JOIN PC ON Product.model = PC.model
WHERE PC.speed >= 450