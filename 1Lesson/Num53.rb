#Дан целочисленный массив. Найти количество элементов, расположенных перед последним максимальным.
mas = [34,32,65,-3,5,65,12,9]
a = mas.rindex( mas.max )
puts mas[0...a].size