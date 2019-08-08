--Найдите модели ПК-блокнотов, скорость которых меньше скорости любого из ПК.
--Вывести: type, model, speed


SELECT DISTINCT type, Laptop.model, speed
FROM Laptop, Product
WHERE speed < ANY (SELECT MIN(speed) FROM PC)
AND Product.type = 'Laptop'


