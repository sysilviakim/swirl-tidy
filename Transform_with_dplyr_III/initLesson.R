# Code placed in this file fill be executed every time the
# lesson is started. Any variables created here will show up in
# the user's working directory and thus be accessible to them
# throughout the lesson.

pipe_1 <- "diamonds_grouped <- diamonds %>%\n  group_by(cut)"
pipe_2 <- "diamonds_grouped %>%\n  summarise(mean_price = mean(price))"
