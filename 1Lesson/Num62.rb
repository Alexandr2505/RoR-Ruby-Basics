#Дан целочисленный массив. Найти два наименьших элемента.
mas = [5, 6, 12, 1, 34]
mas = mas.uniq
mas = mas.sort
puts mas.shift
puts mas.shift