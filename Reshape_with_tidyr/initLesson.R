# Code placed in this file fill be executed every time the
# lesson is started. Any variables created here will show up in
# the user's working directory and thus be accessible to them
# throughout the lesson.

pipe_1 <- paste0(
  'table4a %>%\n  pivot_longer(\n',
  '    cols = c(`1999`, `2000`),\n',
  '    names_to = "year",\n',
  '    values_to = "cases"\n  )'
)
pipe_2 <- paste0(
  'table2 %>%\n  pivot_wider(\n',
  '    names_from = type,\n',
  '    values_from = count\n  )'
)
pipe_3 <- paste0(
  'table3 %>%\n  separate_wider_delim(\n',
  '    cols = rate,\n',
  '    delim = "/",\n',
  '    names = c("cases", "population")\n  )'
)
