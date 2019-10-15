#Дан целочисленный массив. Найти количество максимальных элементов.
mas=[-4,-4,-2,4,2,55,-2,55,-4,-3]
max=mas.max
i = 0
mas.each_index{|x| if mas[x]==max then i=i+1 end}
puts i