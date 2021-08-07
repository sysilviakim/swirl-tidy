# Code placed in this file fill be executed every time the
# lesson is started. Any variables created here will show up in
# the user's working directory and thus be accessible to them
# throughout the lesson.

pipe_1 <- "midwest %>%\n  select(county, state, poptotal)"
pipe_2 <- "midwest %>%\n  filter(state == \"OH\")"
pipe_3 <- "midwest %>%\n  arrange(poptotal)"
