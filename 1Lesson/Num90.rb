#Дан целочисленный массив. Найти количество нечетных элементов.
mas = (1..8).to_a
n = mas.find_all{|elem| elem % 2 == 1}
puts "нечётные:", n.size
