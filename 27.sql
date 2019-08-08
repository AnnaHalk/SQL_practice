-- Найдите средний размер диска ПК каждого из тех производителей, которые выпускают и принтеры.
-- Вывести: maker, средний размер HD.

SELECT maker, AVG(hd) FROM PC
INNER JOIN Product ON Product.model = PC.model
WHERE maker IN (SELECT maker FROM Product WHERE type = 'Printer')
GROUP BY maker