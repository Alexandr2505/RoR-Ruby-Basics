#Дан целочисленный массив. Заменить все положительные элементы на значение максимального.
mas=[-3,6,5,-4,7,-8,12,32]
max=mas.max
(0..mas.size-1).each do |i|
  if mas[i]>0
    mas[i]=max
  end
end
puts mas