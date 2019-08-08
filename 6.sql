-- Для каждого производителя, выпускающего ПК-блокноты c объёмом жесткого диска не менее 10 Гбайт, найти скорости таких ПК-блокнотов.
-- Вывод: производитель, скорость.


SELECT DISTINCT pr.maker, l.speed FROM
Product AS pr, Laptop AS l
WHERE pr.model = l.model
AND l.hd >=10



