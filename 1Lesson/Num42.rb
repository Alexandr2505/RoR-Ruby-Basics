#Дан целочисленный массив. Найти минимальный нечетный элемент.
mas = (1..8).to_a
n = mas.find_all{|elem| elem % 2 == 1}
s = n.min
puts "Нечётный мин.:", s