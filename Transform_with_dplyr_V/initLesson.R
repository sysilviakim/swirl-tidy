# Code placed in this file fill be executed every time the
# lesson is started. Any variables created here will show up in
# the user's working directory and thus be accessible to them
# throughout the lesson.

students <- tibble(
  name = c("Jinu", "Mystery", "Abby", "Romance", "Baby"),
  math = c(92, 85, 78, 95, 88),
  science = c(88, 90, 82, 91, 76),
  english = c(95, 78, 85, 89, 92)
)

pipe_1 <- paste0(
  'students %>%\n  mutate(\n',
  '    across(c(math, science, english), ~ .x / 100)\n  )'
)
pipe_2 <- paste0(
  'students %>%\n  rowwise() %>%\n',
  '  mutate(avg = mean(c_across(math:english))) %>%\n  ungroup()'
)
