#Дан целочисленный массив. Найти все четные элементы.
mas = (1..8).to_a
n = mas.find_all{|elem| elem % 2 == 0}
puts "Чётные:", n
