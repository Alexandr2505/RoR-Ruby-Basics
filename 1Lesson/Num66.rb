#Дан целочисленный массив. Вывести вначале все его нечетные элементы, а затем - четные.
m = mas.find_all{|elem| elem % 2 == 1}
puts "Не чётные:", m
n = mas.find_all{|elem| elem % 2 == 0}
puts "Чётные:", n