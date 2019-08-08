-- Для каждого производителя, имеющего модели в таблице Laptop, найдите средний размер экрана выпускаемых им ПК-блокнотов.
-- Вывести: maker, средний размер экрана.


SELECT maker, AVG(screen) FROM (SELECT maker, Product.model, screen FROM Product
INNER JOIN Laptop ON Product.model = Laptop.model)AS a GROUP BY maker


