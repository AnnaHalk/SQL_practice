-- Перечислите номера моделей любых типов, имеющих самую высокую цену по всей имеющейся в базе данных продукции.


WITH Price_list (model,price) AS
(SELECT model, price FROM PC
UNION
SELECT model, price FROM Printer
UNION
SELECT model, price FROM Laptop)
SELECT model FROM Price_list WHERE price = (SELECT MAX(price) from Price_list)