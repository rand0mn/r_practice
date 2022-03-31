# Пусть у нас есть n предметов, из которых нужно выбрать k штук.
# Запрограммируйте нахождение количество всевозможных сочетаний,
# и количество сочетаний с повторениями (мультикомбинаций) в виде
# функции, зависящей от n и k. Аргумент with_repetitions будет
# отвечать за вариант подсчёта: если он FALSE, то пусть считается
# количество сочетаний, а если TRUE, то сочетаний с повторениями.

combin_count <- function(n, k, with_repretitions = FALSE) {
  if (with_repretitions) {
    return(factorial(n + k - 1) / (factorial(k) * factorial(n - 1)))
  } else {
    return(factorial(n) / (factorial(k) * factorial(n - k)))
  }
}
