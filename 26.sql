-- Найдите среднюю цену ПК и ПК-блокнотов, выпущенных производителем A (латинская буква).
-- Вывести: одна общая средняя цена.


SELECT AVG(price) AS AVG_price FROM
(
SELECT maker, price FROM Product
INNER JOIN PC ON PC.model = Product.model
WHERE maker = 'A'
UNION ALL
SELECT maker, price FROM Product
INNER JOIN Laptop ON Laptop.model = Product.model
WHERE maker = 'A'
)AS av