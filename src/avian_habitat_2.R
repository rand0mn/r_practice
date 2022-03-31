# Используйте комбинацию site_name и total_coverage,
# чтобы определить тот регион, в котором среднее 
# общее покрытие, скажем, наименьшее.

df <- read.csv('https://raw.githubusercontent.com/tonytonov/Rcourse/master/R%20programming/avianHabitat.csv')

p_mask <- grepl('^P', names(df))

df$total_coverage <- rowSums(df[p_mask])
df$site_name <- factor(gsub('[0-9]', '', df$Site))

mean_coverage <- tapply(df$total_coverage, df$site_name, mean)
site_min_coverage <- names(which.min(mean_coverage))

site_min_coverage
