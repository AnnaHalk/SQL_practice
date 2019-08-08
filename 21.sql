-- Найдите максимальную цену ПК, выпускаемых каждым производителем, у которого есть модели в таблице PC.
-- Вывести: maker, максимальная цена.


SELECT maker, MAX(price) FROM Product
INNER JOIN PC ON PC.model = Product.model
GROUP BY maker