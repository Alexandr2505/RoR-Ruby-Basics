#Дан целочисленный массив. Найти количество элементов, расположенных перед последним минимальным.
mas = [34,32,65,-3,5,65,-3,9]
a = mas.rindex( mas.min )
puts mas[0...a].size