# Gревратить количественную переменную mag (сила землетрясения в баллах по шкале Рихтера)
# дата фрейма quakes в качественную. Интервалы должны быть длиной в полбалла, начиная
# с минимального, при этом левый конец интервала включается. Теперь отсортируйте общее
# количество случаев, попавших в каждую категорию, в порядке убывания.


df <- quakes

increment <- 0.5
min_mag <- floor(min(df$mag) / increment) * increment
max_mag <- ceiling(max(df$mag) / increment) * increment

df$mag_categorical <- cut(df$mag, breaks = seq(min_mag, max_mag, by=increment), right = F)
top_mag <- sort(table(df$mag_categorical), decreasing = T)

top_mag
