#Дан целочисленный массив. Поменять местами минимальный и максимальный элементы массива.
mas = (1..8).to_a
max=mas.max
min=mas.min
n = mas.index(max)
m = mas.index(min)
s = n
n = m
m = s
puts n
puts m

