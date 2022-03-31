# Парижане бунтуют! По слухам, Бастилия плохо охраняется,
# а её арсеналы полны пороха и мушкетов. Пришло время 
# решительных действий. Наши агенты смогли подсчитать
# количество солдат в патрулях в каждой из восьми башен крепости
# 
# Составьте короткий отчёт: какая из башен менее всего защищена,
# сколько в ней солдат, и сколько всего солдат в Бастилии?
# Свобода, равенство, братство!
# P.S. Формат ответа: tower_name, XX, YY:
# полное название башни как в списке (без кавычек) и два числа.
# В качестве разделителя -- запятая и пробел.

set.seed(1789)
bastille <- list(
  "La Chapelle Tower" = rbinom(5, 10, 1/2), 
  "Tresor Tower" = rbinom(8, 12, 1/4), 
  "Comte Tower" = rbinom(14, 3, 1/5) + 1,
  "Baziniere Tower" = rbinom(8, 4, 4/5), 
  "Bertaudiere Tower" = rbinom(4, 8, 2/3),
  "Liberte Tower" = rbinom(1, 100, 0.1), 
  "Puits Tower" = rbinom(5, 5, 0.7),
  "Coin Tower" = rbinom(3, 16, 0.4)
)

towers_count <- sapply(bastille, sum)
total_count <- sum(towers_count)


min_indx <- which.min(towers_count)
min_name <- names(bastille)[min_indx]
min_count <- towers_count[[min_indx]]


cat(min_name, min_count, total_count, sep = ', ')
