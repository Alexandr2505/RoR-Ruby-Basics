#Дан целочисленный массив и число К. Если существует элемент, меньший К, то вывести true; в противном случае вывести false.
mas = (1..8).to_a
k = -3
 if mas.find_all{|elem| elem < k};
  puts true
  else 
   puts false
  end
