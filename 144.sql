-- Найти производителей, которые производят PC как с самой низкой ценой, так и с самой высокой.
-- Вывод: maker


SELECT maker FROM Product WHERE model IN (SELECT model FROM PC WHERE price = (SELECT MIN(price) FROM PC) )
INTERSECT
SELECT maker FROM Product WHERE model IN (SELECT model FROM PC WHERE price = (SELECT MAX(price) FROM PC))


