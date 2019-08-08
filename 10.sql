-- Найдите модели принтеров, имеющих самую высокую цену. Вывести: model, price


SELECT model, price FROM Printer WHERE Price IN (SELECT MAX(price) FROM Printer)