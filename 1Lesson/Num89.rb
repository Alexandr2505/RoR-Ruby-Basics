#Дан целочисленный массив. Найти все нечетные элементы.
mas = (1..8).to_a
n = mas.find_all{|elem| elem % 2 == 1}
puts "нечётные:", n
