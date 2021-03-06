# Пусть x -- целочисленный вектор. 
# Напишите функцию, которая вернёт матрицу из двух строк.
# В первой строке перечислите все различные элементы вектора,
# упорядоченные по возрастанию. Во второй строке укажите 
# частоты (количество повторов) этих элементов.
# 
# Пример. Пусть x <- c(5, 2, 7, 7, 7, 2, 0, 0). 
# Тогда функция должна вернуть матрицу 2х4 с элементами


count_elements <- function(x) {
  uniques <- sort(unique(x))
  counts <- sapply(uniques, function(a) length(which(a == x)))

  rbind(uniques, counts)
}
