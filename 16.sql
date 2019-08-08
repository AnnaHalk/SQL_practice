-- Найдите пары моделей PC, имеющих одинаковые скорость и RAM.
-- В результате каждая пара указывается только один раз, т.е. (i,j), но не (j,i),
-- Порядок вывода: модель с большим номером, модель с меньшим номером, скорость и RAM.


SELECT DISTINCT P.model, C.model, P.speed, P.ram
FROM PC AS P, PC C
WHERE P.speed = C.speed AND P.ram = C.ram AND P.model > C.model






