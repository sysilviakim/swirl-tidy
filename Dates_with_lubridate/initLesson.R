# Code placed in this file fill be executed every time the
# lesson is started. Any variables created here will show up in
# the user's working directory and thus be accessible to them
# throughout the lesson.

date_strings <- c("2024-01-15", "2024-03-14", "2024-12-25")
us_dates <- c("01/15/2024", "03/14/2024", "12/25/2024")

events <- tibble(
  event = c("New Year", "Pi Day", "Halloween", "Christmas"),
  date = ymd(c("2024-01-01", "2024-03-14", "2024-10-31", "2024-12-25"))
)
