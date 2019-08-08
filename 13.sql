-- Найдите среднюю скорость ПК, выпущенных производителем A.


SELECT AVG(speed) FROM PC
INNER JOIN Product ON Product.model = PC.model
WHERE Product.maker = 'A'



