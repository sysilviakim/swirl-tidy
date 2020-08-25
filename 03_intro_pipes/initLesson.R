# Code placed in this file fill be executed every time the
# lesson is started. Any variables created here will show up in
# the user's working directory and thus be accessible to them
# throughout the lesson.

pipe_1 <- "midwest %>%\n  filter(state == \"IN\")"
pipe_2 <- paste(
  pipe_1, "%>%",
  "\n  select(-PID, -area, -popdensity)"
)
pipe_3 <- paste(
  pipe_2, "%>%",
  "\n  arrange(desc(poptotal))"
)
