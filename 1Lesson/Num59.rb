#Дан целочисленный массив. Найти количество элементов, между первым и последним минимальным.
a = [15,-9,3,12,3,0,12,7,20,7,12,-9,6]
b = a[(a.index(a.min) + 1)..-1]
puts b[0...b.index(b.min)]