-- Найдите производителя, выпускающего ПК, но не ПК-блокноты.


SELECT maker FROM Product WHERE type = 'PC'
EXCEPT
SELECT maker FROM Product WHERE type = 'Laptop'