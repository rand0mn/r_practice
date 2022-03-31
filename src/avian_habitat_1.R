# Растительность Аляски, как мы уже знаем, достаточно скудна.
# Исследователям интересно, какие выдающиеся экземпляры растений
# удалось обнаружить? На массиве avianHabitat найдите максимальные
# высоты по каждому виду растений и отсортируйте эти виды по
# убыванию, от самого высокого к самому низкому.

df <- read.csv('https://raw.githubusercontent.com/tonytonov/Rcourse/master/R%20programming/avianHabitat.csv')
df <- df[grepl('Ht', names(df))]
max_heights <- sort(sapply(df, max), decreasing = T)

names(max_heights)
