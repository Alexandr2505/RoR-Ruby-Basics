#Дан целочисленный массив. Необходимо вывести вначале его элементы с четными индексами, а затем - с нечетными.
mas = [1, 3, 5, 7, 12, 14, 8]
puts mas.select.with_index { |_, index| index.even? } + mas.select.with_index { |_, index| index.odd? }