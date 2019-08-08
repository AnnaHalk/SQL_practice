-- Найдите производителей самых дешевых цветных принтеров. Вывести: maker, price


SELECT DISTINCT maker, price FROM Printer
INNER JOIN Product ON Printer.model = Product.model WHERE color = 'y' AND price = (SELECT MIN(price) FROM Printer WHERE color = 'y')


