# Code placed in this file fill be executed every time the
# lesson is started. Any variables created here will show up in
# the user's working directory and thus be accessible to them
# throughout the lesson.

simple_list <- list(1:5, 6:10, 11:15)
named_list <- list(a = 10, b = 20, c = 30)
pipe_1 <- 'simple_list %>%\n  map(mean)'
pipe_2 <- 'simple_list %>%\n  map_dbl(mean)'
