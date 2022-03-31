# Наши любимые учёные, конечно же, соревнуются между собой.
# Самоё почётное, как нам уже известно, -- найти самый
# высокий экземпляр вида. В конце сезона исследователи 
# подводят итоги и определяют самого удачливого, который 
# торжественно объявляется чемпионом. После чего все пьют
# горячий грог и травят байки у костра.
# Хорошо у них там!
# Давайте поможем нашим друзьям определить, кто из них
# нашёл самые большие экземпляры по каждому виду.

df <- read.csv('https://raw.githubusercontent.com/tonytonov/Rcourse/master/R%20programming/avianHabitat.csv')

height_columns <- names(df)[grepl('Ht$', names(df))]

top_ht <- aggregate(df[height_columns], by = list(Observer = df$Observer), max)
top_observers <- sapply(top_ht[height_columns], function(height) top_ht$Observer[which.max(height)])

top_observers

# Output:
#
# DBHt  WHt  EHt  AHt  HHt  LHt 
# RA   JT   JT   JT   JT   RA 
# Levels: JT RA RR
