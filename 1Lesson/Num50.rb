#Дан целочисленный массив. Найти количество элементов, расположенных перед первым максимальным.
mas = [34,32,65,-3,5,3,12,9]
a = mas.index( mas.max )
puts mas[0...a].size