#Дан целочисленный массив. Найти индекс последнего минимального элемента.
mas=[-33,6,-55,-4,7,-8,-55,32]
min = mas.min
m = mas.rindex(min)
puts "size of min elem.", m
