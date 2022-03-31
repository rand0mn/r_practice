# Одна интересная конструкция, о которой я рассказал, может быть использована
# для передачи произвольного количества аргументов далее по стеку вызовов
# вложенных функций. С помощью этой конструкции напишите такую функцию,
# которая займётся украшением строк.
# 
# Пусть функция decorate_string действует поверх функции paste, дополнительно
# приклеивая к результату аргумент pattern. При этом этот аргумент должен быть
# присоединён как в начале строки (строк), так и в конце, но перевёрнутый
# задом наперёд.
# 
# decorate_string(pattern = "123", "abc")            # "123abc321"
# decorate_string(pattern = "123", "abc", "def")     # "123abc def321"
# decorate_string(pattern = "123", c("abc", "def"))  # "123abc321" "123def321" (вектор длины 2)
# 
# Обратите внимание, что функция decorate_string должна помнить про аргументы для paste и правильно на них реагировать:
#   
# decorate_string(pattern = "123", "abc", "def", sep = "+")    # "123abc+def321"
# decorate_string(pattern = "!", c("x", "x"), collapse = "_")  # "!x_x!"
# decorate_string(pattern = ".:", 1:2, 3:4, 5:6, sep = "&")    # ".:1&3&5:." ".:2&4&6:." (вектор длины 2)


decorate_string <- function(pattern, ...) { 
  reversed_pattern <- paste(rev(strsplit(pattern, NULL)[[1]]), collapse = '')
  inner_str <- paste(...)
  wrapped <- paste0(pattern, inner_str, reversed_pattern)
  
  wrapped
}
