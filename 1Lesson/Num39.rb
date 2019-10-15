#Дан целочисленный массив. Найти количество минимальных элементов.
mas=[-4,-4,-2,4,2,55,-2,55,-4,-3]
min=mas.min
i = 0
mas.each_index{|x| if mas[x]==min then i=i+1 end}
puts i