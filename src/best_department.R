# Вы решили, что самое главное для вас -- это возможность учиться новому (learning).
# Возьмите 5 топовых департаментов по этому показателю. Из этого набора вам более 
# всего подойдёт тот департамент, который имеет наибольшую сумму баллов по трём
# показателям: реакция на жалобы работников (complaints), надбавки в зависимости 
# от результатов работы (raises) и возможность продвижения (advance).
# 
# Какой же департамент вам выбрать? Напишите его номер XX (номер строки в дата фрейме).

df <- attitude[order(attitude$learning, decreasing = T),]
df <- head(df, 5)
df$sum <- df$complaints + df$raises + df$advance

best_department <- df[which.max(df$sum), ]
best_department_indx <- rownames(best_department)
best_department_indx
