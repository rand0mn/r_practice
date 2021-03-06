# Напишите функцию get_fractions, которая принимает на вход два числа,
# m и n, и возвращает аналогичный вектор, содержащий все дроби
# вида {i/m, i = 0, 1, ..., m} и  {j/n, j = 0, 1, ..., n}.
# Вектор не должен содержать повторов. 
# И -- сюжетный поворот -- должен быть упорядочен в порядке убывания. 


get_fractions <- function(m, n){
  v1 <- seq(0, 1, 1/m)
  v2 <- seq(0, 1, 1/n)
  
  unique(sort(c(v1, v2), decreasing=TRUE))
}

