# Code placed in this file fill be executed every time the
# lesson is started. Any variables created here will show up in
# the user's working directory and thus be accessible to them
# throughout the lesson.

pipe_1 <- paste0(
  'gss_cat %>%\n  count(marital) %>%\n  ',
  'ggplot(aes(x = n, y = fct_reorder(marital, n))) +\n  geom_col()'
)
