#Дан целочисленный массив. Необходимо вывести вначале его элементы с нечетными индексами, а затем - четными.
mas = [1..13]
mas.select.with_index { |_, index| index.odd? } + mas.select.with_index { |_, index| index.even? }