#Дан целочисленный массив. Найти количество четных элементов.
mas = (1..8).to_a
n = mas.find_all{|elem| elem % 2 == 0}
puts "Чётные:", n.size
