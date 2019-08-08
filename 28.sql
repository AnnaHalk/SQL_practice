--Используя таблицу Product, определить количество производителей, выпускающих по одной модели.


SELECT COUNT(maker) FROM (SELECT COUNT(model)as number_of_model, maker FROM Product
GROUP BY maker) as unique_makers WHERE number_of_model = 1



